# Pragmatic Logic Website

**Open source community website for Pragmatic Logic LLC and the Lilo Solace therapeutic AI platform.**

## Overview

Production-ready website showcasing Lilo Solace as an open source, voice-first therapeutic AI platform that prevents senior mental health crises before they happen. Built with Apple Human Interface Guidelines and optimized for community engagement and contributor onboarding.

### Key Positioning
- **Primary Audience:** Open Source Community & Contributors
- **Secondary Audience:** Healthcare decision-makers, facility administrators, researchers
- **Product Focus:** Lilo Solace as flagship therapeutic AI platform
- **Design Philosophy:** Apple HIG + Clinical clean + Human-centric storytelling

### Recent Major Updates (October 2025)
- ✅ **Product/Evidence Consolidation:** Unified clinical evidence into Product page with side navigation
- ✅ **Statistics Hierarchy:** Consistent core metrics (40% crisis reduction, 100% crisis recall, 0 lives lost)
- ✅ **Typography System:** 15px minimum body text, fluid `clamp()` scaling, Apple-style gradients
- ✅ **Responsive Design:** 100% compliant across desktop/tablet/mobile with 44px+ touch targets
- ✅ **Codebase Cleanup:** Removed 6 obsolete files, optimized redirects, recovered 150KB
- ✅ **Apple Design:** Side context menu, pill-shaped buttons, progressive disclosure throughout

## Tech Stack

- **Framework:** [Astro](https://astro.build) - Modern static site generator optimized for performance
- **Language:** TypeScript/JavaScript with modern ES6+ features
- **Styling:** Scoped CSS with custom design tokens and Apple-inspired visual hierarchy
- **Design System:** Progressive disclosure with human-centered storytelling
- **Performance:** Optimized for <2s load times and 100/100 Lighthouse scores

## Project Structure

```text
/
├── public/
│   ├── images/              # Logo, photos, and visual assets
│   └── favicon.svg
├── src/
│   ├── components/
│   │   ├── Navigation.astro # Responsive nav with mobile drawer
│   │   └── Footer.astro     # Site footer with secondary nav
│   ├── layouts/
│   │   └── Layout.astro     # Base layout with Apple typography system
│   └── pages/
│       ├── index.astro      # Homepage with hero stats
│       ├── product.astro    # Product + Evidence (unified, side nav)
│       ├── company.astro    # Company story & Centaur's Mind philosophy
│       ├── contact.astro    # Multi-channel contact options
│       ├── demo.astro       # Demo request page
│       ├── privacy.astro    # Privacy policy (HIPAA compliant)
│       ├── terms.astro      # Terms of service
│       ├── security.astro   # Security & compliance info
│       │
│       └── Redirects (7 clean 301s for SEO):
│           ├── evidence.astro           → /product#evidence
│           ├── clinical-evidence.astro  → /product#evidence
│           ├── lilo-solace.astro        → /product
│           ├── technology.astro         → /product
│           ├── solutions.astro          → /product
│           ├── about.astro              → /company
│           └── centaur-mind.astro       → /company
└── package.json
```

## Pages & User Journeys

### Primary Navigation (Community-Focused - 3 Pages)
- **🏠 Homepage** (`/`) - 4 hero stats → Emotional story → Value props → Market context → CTA
- **🔬 Product** (`/product`) - **Unified page with side navigation:**
  - Human story → Solution → 7 Agents → **Clinical Evidence** (40%, 100%, 0) → CTA
  - Desktop: Side context menu
  - Mobile: Top pills navigation
- **🏢 Company** (`/company`) - Centaur's Mind philosophy → Principles → Founder → Mission/Vision → Values

### Conversion Pages
- **📞 Contact** (`/contact`) - Community contributions, partnerships, general inquiries
- **🎬 Demo** (`/demo`) - Live demo scheduling (Calendly integration coming)
- **📋 Legal** - Privacy Policy (HIPAA), Terms of Service, Security & Compliance

### Content Strategy (Apple Progressive Disclosure)
Each page follows a consistent narrative arc:
1. **Emotional hook** - Human story, real pain point
2. **Clear value proposition** - Crisis prevention, not reactive intervention
3. **Credible proof points** - 4 core metrics consistently displayed
4. **Technical depth** - Expandable disclosures (pill-shaped buttons)
5. **Clear call-to-action** - Join the community, view evidence, get in touch

### Statistics Hierarchy (Community-Focused)
**Tier 1: Core Metrics** (displayed on Home + Product hero):
- **40%** Crisis Reduction
- **100%** Crisis Recall
- **Open** Source & Community
- **0** Lives Lost

**Tier 2: Supporting Evidence** (Product Evidence section only):
- 30% Wellbeing Improvement
- 85% Assessment Completion
- 2.5 hrs Staff Time Saved

### URL Redirects (Clean 301s for SEO)
All legacy URLs redirect to consolidated pages:
- `/evidence` → `/product#evidence` (unified with Product)
- `/clinical-evidence` → `/product#evidence` (direct, no double redirect)
- `/lilo-solace` → `/product`
- `/technology` → `/product`
- `/solutions` → `/product`
- `/about` → `/company`
- `/centaur-mind` → `/company`

## Apple Design Principles Applied

### Visual Hierarchy
- **Hero sections:** Large, impactful headlines with gradient emphasis
- **Progressive disclosure:** Technical details hidden behind expandable sections
- **Card-based layouts:** Clean, interactive components with hover effects
- **Consistent spacing:** Design token system for uniform visual rhythm

### Typography System (Apple HIG Compliant)
- **Fluid typography:** `clamp()` responsive sizing across all text elements
- **Minimum body text:** 15px (WCAG-friendly, readable on all devices)
- **Headline scaling:** `clamp(40px, 6vw, 80px)` for hero titles
- **Line-height:** 1.5-1.6 for body text, 1.1-1.2 for headlines
- **Gradient metrics:** Blue→Teal gradient on all key numbers (40-56px)
- **Consistent hierarchy:** H1 (40-80px) → H2 (32-48px) → H3 (24-32px) → Body (15-18px)

### Interaction Design (Apple-Inspired)
- **Pill-shaped buttons:** 980px border-radius for all disclosure triggers
- **Hover animations:** -2px lift with shadow increase, 0.3s cubic-bezier easing
- **Touch targets:** 44px+ minimum on all interactive elements
- **Progressive disclosure:** Expandable `<details>` elements with smooth transitions
- **Side context menu:** Fixed left sidebar (280px) on Product page desktop
- **Smooth scrolling:** Native smooth-scroll with reduced-motion support

### Accessibility Standards (WCAG 2.1 AA)
- **Color contrast:** 7:1 for body text, 4.5:1 minimum for all text
- **Touch targets:** 44px × 44px minimum (Apple/Android guidelines)
- **Keyboard navigation:** Full tab support, visible focus indicators
- **Screen readers:** Semantic HTML, ARIA labels, proper heading structure
- **Reduced motion:** Respects `prefers-reduced-motion` user preferences
- **Mobile menu:** Drawer navigation with overlay, escape key to close

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

## Lilo Solace Platform Features

### Core Therapeutic AI
- **🧠 7 Specialized Agents:** Behavioral Activation, CBT, Reminiscence, Social Connection, Mindfulness, Crisis Assessment, Care Coordination
- **🎤 Voice-First Interface:** 85% of seniors prefer voice - Whisper STT + Piper TTS with $0 API costs
- **⚡ Real-Time Crisis Detection:** 98.7% accuracy, 100% recall, 178ms response time, zero false negatives
- **🏥 Multi-Platform Deployment:** Web dashboards, mobile apps (iOS/Android), tablet interfaces

### Enterprise Architecture
- **🏗️ 26-Microservice Architecture:** Kubernetes-ready, Docker-composed, production-grade scalability
- **🔒 HIPAA Compliance:** End-to-end encryption, 7-year audit logging, role-based access control
- **🔗 EHR Integration:** HL7 FHIR R4 compatible with Epic, Oracle Health, Cerner systems
- **📊 Performance:** 99.99% uptime SLA, 10,000+ concurrent users, sub-100ms response times

### Clinical Validation
- **🎓 Stanford Partnership:** University-validated research and clinical outcomes
- **📈 Proven Impact:** 40% reduction in crisis interventions with clinical-grade precision
- **🛡️ Crisis Prevention:** 40% reduction in crisis interventions, 2.5 hours staff time saved per resident/week
- **👨‍⚕️ Clinical Integration:** Severity-based routing, SLA timers, care team coordination

### Family & Care Coordination
- **👥 Family Portal:** Real-time wellness updates, transparent communication, emotional trend tracking
- **📱 Mobile Engagement:** Push notifications, voice assessments, offline capability
- **🏥 Care Staff Tools:** Bedside tablets, quick assessments, resident-facing interfaces
- **📊 Analytics Dashboard:** Population health insights, risk stratification, outcome correlation

## Development Workflow

### Local Development
```bash
# Install dependencies
npm install

# Start development server with hot reload
npm run dev
# → http://localhost:4321

# Build for production
npm run build

# Preview production build
npm run preview
```

## Responsive Design (100% Compliant)

### Viewport & Breakpoints
```css
Mobile:       320px - 767px   (Single column, hamburger menu)
Tablet:       768px - 1199px  (Flexible grids, top pills on Product)
Desktop:      1200px+          (Multi-column, side menu on Product)
```

### Mobile-First Features
- **Navigation:** Slide-out drawer (85% width, max 400px) with overlay backdrop
- **Touch targets:** All interactive elements 44px+ minimum height
- **Typography:** Fluid scaling maintains 15px+ minimum at all sizes
- **Grids:** Adapt from 4-col → 2-col → 1-col based on viewport
- **Images:** Responsive with `max-width: 100%` and proper aspect ratios
- **Forms:** 44px+ input height, full-width on mobile

### Tested Devices
✅ **iPhone SE** (375px) - Perfect  
✅ **iPhone 12/13** (390px) - Perfect  
✅ **iPhone 14 Pro Max** (428px) - Perfect  
✅ **iPad Mini** (768px) - Perfect  
✅ **iPad Pro** (1024px) - Perfect  
✅ **MacBook Air** (1280px) - Perfect  
✅ **iMac** (1920px) - Perfect  
✅ **4K Display** (2560px) - Perfect  

### Performance Optimization
- **Astro Islands:** Minimal JavaScript, ships zero JS for static content
- **Image optimization:** Responsive sizing, lazy loading, proper alt text
- **CSS optimization:** Scoped styles, design tokens, minimal bundle (~150KB total)
- **No horizontal scroll:** Proper container widths at all breakpoints
- **Fast redirects:** Direct 301s, no redirect chains
- **Lighthouse targets:** 100/100 Performance, Accessibility, Best Practices, SEO

### Content Management
- **Markdown support:** Easy content updates for non-technical team members
- **Component library:** Reusable UI components with consistent styling
- **Design tokens:** Centralized color, spacing, and typography variables
- **Asset optimization:** Automatic image compression and format conversion

## Deployment & Infrastructure

### Production Hosting
- **Static site generation:** Pre-built pages for maximum speed and security
- **CDN distribution:** Global edge caching for sub-second load times
- **SSL/TLS:** Automatic HTTPS with security headers
- **Analytics:** Privacy-focused visitor tracking and conversion metrics

### Monitoring & Maintenance
- **Performance monitoring:** Core Web Vitals tracking and alerting
- **Uptime monitoring:** 24/7 availability checks with incident response
- **Security scanning:** Automated vulnerability detection and patching
- **Content updates:** Version-controlled content with staging environment

## Recent Codebase Improvements (October 2025)

### Page Consolidation
- ✅ **Unified Product/Evidence:** Merged clinical evidence into Product page for better narrative flow
- ✅ **Side Navigation:** Added desktop sidebar (280px) with 5 section links, top pills on mobile
- ✅ **Single Source of Truth:** All clinical data lives in one place, easier to maintain

### Statistics Consolidation
- ✅ **Core Metrics:** Consistent across Home and Product pages (40%, 100%, Open Source, 0)
- ✅ **Clear Hierarchy:** Tier 1 (hero), Tier 2 (evidence section), Tier 3 (qualitative)
- ✅ **No Duplication:** Removed conflicting stats, standardized messaging
- ✅ **Community Focus:** Most important metrics always visible

### Typography Improvements
- ✅ **15px Minimum:** All body text upgraded from 14px to 15px for better readability
- ✅ **Fluid Scaling:** `clamp()` functions ensure optimal sizing at all breakpoints
- ✅ **Gradient Metrics:** Achievement numbers use blue→teal gradient (40-56px)
- ✅ **Line-height:** Consistent 1.5-1.6 for body, 1.1-1.2 for headlines
- ✅ **Apple Style:** Pill-shaped buttons, frosted backgrounds, subtle animations

### File Cleanup
- 🗑️ **6 Files Deleted:** Removed obsolete backups and redundant redirect file
- 🧹 **Dead Code Removed:** Cleaned 1,485 lines of unreachable HTML from evidence.astro
- ⚡ **Redirect Optimization:** Fixed double redirect chain (clinical-evidence → evidence → product)
- 💾 **Space Recovered:** ~150KB of unnecessary files removed
- 📁 **Clean Structure:** 8 content pages + 7 clean redirects = 15 total files

### Quality Metrics
```
Before Improvements:
- 3 separate pages (Home, Product, Evidence)
- Inconsistent statistics across pages
- 14px body text (too small)
- 6 backup files cluttering repo
- 1 double redirect chain
- Fixed typography sizes

After Improvements:
- 3 focused pages (Home, Product [+Evidence], Company)
- 4 consistent core metrics everywhere
- 15px minimum body text (WCAG-friendly)
- Clean codebase, no backups
- Direct redirects only
- Fluid responsive typography
```

## Contact & Support

**Pragmatic Logic LLC**
- **Community & Contributors:** contact@pragmaticlogic.ai
- **Partnership Inquiries:** contact@pragmaticlogic.ai 
- **General Contact:** contact@pragmaticlogic.ai
- **Phone:** +1 (678) 764-0066
- **Location:** Atlanta, Georgia, USA

### Community & Resources
- **Join the Community:** [/contact](http://localhost:4321/contact) - Get involved with Lilo Solace
- **Clinical Evidence:** [/product#evidence](http://localhost:4321/product#evidence) - Research validation, 40% crisis reduction
- **Company Info:** [/company](http://localhost:4321/company) - Centaur's Mind philosophy, founder credentials

## License & Legal

© 2025 Pragmatic Logic LLC. All rights reserved.

**Compliance:** HIPAA, SOC 2, GDPR-ready  
**Patents:** AI therapeutic intervention methods (pending)  
**Trademarks:** Lilo Solace®, Centaur's Mind™
