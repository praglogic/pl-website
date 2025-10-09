# Pragmatic Logic Website

**Investor-focused website for Pragmatic Logic LLC and the Lilo Solace therapeutic AI platform.**

## Overview

This website showcases Lilo Solace as an enterprise-ready, voice-first therapeutic AI platform that prevents senior mental health crises before they happen. Built with Apple design thinking principles and optimized for investor engagement and enterprise sales.

### Key Positioning
- **Primary Audience:** Investors (Series A fundraising)
- **Secondary Audience:** Healthcare decision-makers, facility administrators
- **Product Focus:** Lilo Solace as flagship therapeutic AI platform
- **Design Philosophy:** Clinical clean + human-centric + Apple minimalism

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

## Pages & User Journeys

### Primary Navigation (Investor-Focused)
- **🏠 Homepage** (`/`) - Human story → Product promise → Clinical proof → ROI calculator
- **🎯 Product** (`/product`) - Voice-first platform, 7 agents, enterprise architecture
- **📊 Evidence** (`/evidence`) - Stanford study, clinical outcomes, 98.7% accuracy
- **🏢 Company** (`/company`) - Mission, Centaur's Mind philosophy, team credentials

### Conversion Pages
- **📞 Contact** (`/contact`) - Multi-channel engagement (investors, partners, customers)
- **🎬 Demo** (`/demo`) - Live demo scheduling with Calendly integration
- **📋 Legal** - Privacy Policy, Terms of Service, Security & HIPAA compliance

### Content Strategy
Each page follows Apple's progressive disclosure:
1. **Emotional hook** (human story)
2. **Clear value proposition** (crisis prevention)
3. **Credible proof points** (clinical metrics)
4. **Technical depth** (expandable sections)
5. **Clear call-to-action** (demo, contact)

### URL Redirects
Legacy URLs redirect to consolidated investor-focused pages:
- `/about` → `/company`
- `/lilo-solace` → `/product`
- `/technology` → `/product#infrastructure`
- `/solutions` → `/product#how-it-works`
- `/clinical-evidence` → `/evidence`
- `/centaur-mind` → `/company#philosophy`

## Apple Design Principles Applied

### Visual Hierarchy
- **Hero sections:** Large, impactful headlines with gradient emphasis
- **Progressive disclosure:** Technical details hidden behind expandable sections
- **Card-based layouts:** Clean, interactive components with hover effects
- **Consistent spacing:** Design token system for uniform visual rhythm

### Typography System
- **Fluid typography:** Responsive text sizing with `clamp()` for all devices
- **Optimal readability:** 65-75 character line lengths, 1.6-1.8 line-height
- **Semantic hierarchy:** Clear H1-H6 progression with proper contrast ratios
- **Performance fonts:** System fonts for speed, custom fonts for brand moments

### Interaction Design
- **Smooth animations:** 60fps transitions with hardware acceleration
- **Hover states:** Subtle feedback on all interactive elements
- **Touch-friendly:** 44px+ touch targets for mobile accessibility
- **Loading states:** Progressive enhancement with graceful degradation

### Accessibility Standards
- **WCAG AA compliance:** 4.5:1 contrast ratios, keyboard navigation
- **Screen reader optimization:** Semantic HTML, proper ARIA labels
- **Color accessibility:** Information not conveyed by color alone
- **Focus management:** Clear focus indicators and logical tab order

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
- **📈 Proven ROI:** $500/bed/month investment saves $3,000+ in readmission costs (6:1 ROI)
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

### Performance Optimization
- **Astro Islands:** Minimal JavaScript, maximum performance
- **Image optimization:** WebP conversion, responsive sizing
- **CSS optimization:** Scoped styles, design tokens, minimal bundle size
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

## Contact & Support

**Pragmatic Logic LLC**
- **Investor Relations:** investors@pragmaticlogic.ai
- **Partnership Inquiries:** partnerships@pragmaticlogic.ai  
- **General Contact:** contact@pragmaticlogic.ai
- **Phone:** +1 (678) 764-0066
- **Location:** Atlanta, Georgia, USA

### Demo & Sales
- **Live Demo:** [Schedule via Calendly](https://calendly.com/pragmaticlogic)
- **Clinical Evidence:** [Stanford study results](/evidence)
- **ROI Calculator:** [Interactive cost-benefit analysis](/product#roi)

## License & Legal

© 2025 Pragmatic Logic LLC. All rights reserved.

**Compliance:** HIPAA, SOC 2, GDPR-ready  
**Patents:** AI therapeutic intervention methods (pending)  
**Trademarks:** Lilo Solace®, Centaur's Mind™
