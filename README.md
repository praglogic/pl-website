# Pragmatic Logic Website

Official website for Pragmatic Logic LLC and the Lilo Solace therapeutic AI platform.

## Overview

This website showcases Lilo Solace, a clinical-grade multi-agent therapeutic AI platform designed specifically for senior mental health care. Built with modern web technologies and Apple-style minimalist design principles.

## Tech Stack

- **Framework:** [Astro](https://astro.build) - Modern static site generator
- **Language:** TypeScript/JavaScript
- **Styling:** Scoped CSS with design tokens
- **Design System:** Custom human-centric minimalist design

## Project Structure

```text
/
├── public/
│   ├── images/              # Logo, photos, and visual assets
│   └── favicon.svg
├── src/
│   ├── components/
│   │   ├── Navigation.astro # Main navigation (3 items + CTA)
│   │   └── Footer.astro     # Site footer with secondary nav
│   ├── layouts/
│   │   └── Layout.astro     # Base layout with typography system
│   └── pages/
│       ├── index.astro      # Homepage
│       ├── product.astro    # Lilo Solace product details
│       ├── evidence.astro   # Clinical evidence & validation
│       ├── company.astro    # Company story & philosophy
│       ├── contact.astro    # Contact information
│       ├── demo.astro       # Demo request page
│       ├── privacy.astro    # Privacy policy (HIPAA compliant)
│       ├── terms.astro      # Terms of service
│       └── security.astro   # Security & compliance info
└── package.json
```

## Pages & Navigation

### Main Navigation
- **Product** (`/product`) - Complete Lilo Solace story, agents, technology
- **Evidence** (`/evidence`) - Clinical validation, research, outcomes
- **Company** (`/company`) - Mission, philosophy, team

### Secondary Pages
- **Contact** (`/contact`) - Multi-channel contact options
- **Demo** (`/demo`) - Demo request form
- **Legal** - Privacy, Terms, Security pages

### Redirects
Legacy URLs redirect to consolidated pages:
- `/about` → `/company`
- `/lilo-solace` → `/product`
- `/technology` → `/product`
- `/solutions` → `/product`
- `/clinical-evidence` → `/evidence`
- `/centaur-mind` → `/company`

## Design Principles

- **Apple-Style Minimalism:** Clean, focused, human-centric design
- **Progressive Disclosure:** Information revealed as needed
- **Fluid Typography:** Responsive text sizing with `clamp()`
- **Optimal Readability:** 65-75 character line lengths, 1.7 line-height
- **Accessible Color Contrast:** WCAG AA compliant

## Commands

All commands are run from the root of the project:

| Command | Action |
| :------------------------ | :----------------------------------------------- |
| `npm install` | Install dependencies |
| `npm run dev` | Start local dev server at `localhost:4321` |
| `npm run build` | Build production site to `./dist/` |
| `npm run preview` | Preview build locally before deploying |
| `npm run astro ...` | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI |

## Development

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Start development server:**
   ```bash
   npm run dev
   ```

3. **Open browser:**
   Navigate to `http://localhost:4321`

4. **Build for production:**
   ```bash
   npm run build
   ```

## Key Features

- **Seven Specialized Agents:** Therapeutic AI agents for different mental health needs
- **Cadence Engine:** Adaptive wellness monitoring
- **Crisis Detection:** Real-time safety assessment
- **Family Engagement:** Transparent communication tools
- **HIPAA Compliance:** Healthcare-grade security and privacy
- **Clinical Evidence:** Research-backed therapeutic approaches

## Contact

**Pragmatic Logic LLC**
- Email: contact@pragmaticlogic.ai
- Phone: +1 (678) 764-0066
- Location: Atlanta, Georgia

## License

© 2025 Pragmatic Logic LLC. All rights reserved.
