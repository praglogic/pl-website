/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        pl: {
          bg: '#F7F8FA',
          surface: '#FFFFFF',
          text: '#0B0F17',
          muted: '#475569',
          hairline: 'rgba(15,23,42,0.10)',
          dark: {
            bg: '#070B14',
            text: '#EAF0FF',
            muted: 'rgba(234,240,255,0.72)',
            hairline: 'rgba(234,240,255,0.12)',
            surface: 'rgba(255,255,255,0.06)',
          },
          accent: {
            blue: '#2563EB',
            green: '#10B981',
          },
        },
      },
      boxShadow: {
        'hairline-light': '0 1px 0 rgba(15,23,42,0.06)',
      },
      borderRadius: {
        'pl-card': '16px',
        'pl-panel': '24px',
      },
    },
  },
  corePlugins: {
    preflight: false,
  },
  plugins: [],
};
