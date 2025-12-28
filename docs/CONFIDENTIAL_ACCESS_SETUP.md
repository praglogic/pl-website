# Confidential Document Access Setup

This guide explains how to set up the protected architecture document with Supabase authentication.

## Overview

The system provides:
- **User authentication** (email/password + magic link)
- **Confidentiality agreement** that users must accept before viewing
- **Protected document access** with session verification
- **Audit trail** of who accepted the agreement and when

## Setup Steps

### 1. Create a Supabase Project

1. Go to [supabase.com](https://supabase.com) and create a free account
2. Create a new project
3. Note your project URL and anon key from Settings → API

### 2. Configure Environment Variables

Create a `.env` file in the project root:

```bash
PUBLIC_SUPABASE_URL=https://your-project.supabase.co
PUBLIC_SUPABASE_ANON_KEY=your-anon-key-here
```

### 3. Set Up Database Tables

1. Go to your Supabase dashboard → SQL Editor
2. Copy and run the contents of `supabase-setup.sql`

This creates:
- `confidentiality_agreements` table with RLS policies
- Indexes for fast lookups
- Admin view for monitoring agreements

### 4. Configure Authentication

In Supabase Dashboard → Authentication → Settings:

1. **Email Auth**: Enable email/password sign-in
2. **Email Templates**: Customize confirmation and magic link emails
3. **URL Configuration**: Set your site URL and redirect URLs:
   - Site URL: `https://pragmaticlogic.ai`
   - Redirect URLs: `https://pragmaticlogic.ai/confidential/agreement`

### 5. Deploy

The confidential document is now protected. Users must:
1. Sign up/sign in at `/auth/signin`
2. Accept confidentiality agreement at `/confidential/agreement`
3. Then they can access `/confidential/architecture`

## File Structure

```
src/
├── lib/
│   └── supabase.ts          # Supabase client
├── pages/
│   ├── auth/
│   │   ├── signin.astro     # Sign in page
│   │   └── signup.astro     # Request access page
│   └── confidential/
│       ├── agreement.astro   # Confidentiality agreement
│       └── architecture.astro # Protected document viewer
public/
└── confidential-docs/
    ├── Lilo_Engine_External_Architecture_Brief_Interactive.html
    └── *.png                  # Document images
```

## Security Notes

1. **Client-side protection**: The current implementation uses client-side auth checks. For production, consider adding server-side middleware.

2. **Document URL**: The document is technically accessible if someone knows the direct URL. For maximum security, consider:
   - Moving docs to Supabase Storage with signed URLs
   - Using an API route to serve the document

3. **Agreement immutability**: Users cannot modify or delete their agreement once signed.

## Monitoring Agreements

View who has signed in Supabase:

```sql
SELECT 
  user_email,
  agreed_at,
  raw_user_meta_data->>'full_name' as name,
  raw_user_meta_data->>'company' as company
FROM confidentiality_agreements ca
JOIN auth.users u ON ca.user_id = u.id
ORDER BY agreed_at DESC;
```

## Adding a Link to the Document

Add a link from your main site, e.g., in the product page:

```html
<a href="/auth/signin">View Technical Architecture (Confidential)</a>
```

Or for logged-in users:

```html
<a href="/confidential/architecture">View Technical Architecture</a>
```
