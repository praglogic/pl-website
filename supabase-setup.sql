-- Supabase Database Setup for Confidential Document Access
-- Run this in your Supabase SQL Editor (https://supabase.com/dashboard)

-- Create the confidentiality_agreements table
CREATE TABLE IF NOT EXISTS confidentiality_agreements (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    user_email TEXT NOT NULL,
    agreed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    ip_address TEXT,
    user_agent TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    
    -- Ensure one agreement per user
    CONSTRAINT unique_user_agreement UNIQUE (user_id)
);

-- Create index for faster lookups
CREATE INDEX IF NOT EXISTS idx_agreements_user_id ON confidentiality_agreements(user_id);
CREATE INDEX IF NOT EXISTS idx_agreements_email ON confidentiality_agreements(user_email);

-- Enable Row Level Security (RLS)
ALTER TABLE confidentiality_agreements ENABLE ROW LEVEL SECURITY;

-- Policy: Users can only read their own agreement
CREATE POLICY "Users can view own agreement"
    ON confidentiality_agreements
    FOR SELECT
    USING (auth.uid() = user_id);

-- Policy: Users can insert their own agreement
CREATE POLICY "Users can create own agreement"
    ON confidentiality_agreements
    FOR INSERT
    WITH CHECK (auth.uid() = user_id);

-- Policy: Prevent updates (agreements should be immutable)
-- No UPDATE policy means users cannot modify their agreement

-- Policy: Prevent deletes by users (only admins should be able to delete)
-- No DELETE policy for regular users

-- Grant necessary permissions
GRANT SELECT, INSERT ON confidentiality_agreements TO authenticated;

-- Optional: Create a view for admins to see all agreements
CREATE OR REPLACE VIEW admin_confidentiality_agreements AS
SELECT 
    ca.id,
    ca.user_email,
    ca.agreed_at,
    ca.user_agent,
    u.raw_user_meta_data->>'full_name' as full_name,
    u.raw_user_meta_data->>'company' as company
FROM confidentiality_agreements ca
JOIN auth.users u ON ca.user_id = u.id
ORDER BY ca.agreed_at DESC;

-- Note: This view requires admin/service role access
