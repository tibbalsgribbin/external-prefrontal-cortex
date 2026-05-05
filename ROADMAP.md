# Roadmap — External Prefrontal Cortex

---

## Phase 0 — Foundation (Current)
*Goal: Working infrastructure and one solid tool*

- [x] Create GitHub repo
- [ ] Set up GitHub Pages
- [ ] Create Supabase project
- [ ] Set up Supabase Auth (email login, no password manager friction)
- [x] Complete nd-checkin question set design (v2 complete)
- [x] Frequency system designed (Always / Occasional / Off — everything Always by default)
- [x] Low capacity mode concept confirmed (design details TBD in onboarding session)
- [x] Tweaking scope decided — full control during onboarding: frequency, question wording, plain-language descriptions, custom questions; all edits scaffolded; per-question revert available in settings; Q42 trigger logic and Always-lock hard-coded and cannot be changed
- [ ] Design nd-checkin onboarding flow (includes low capacity mode content and trigger)
- [ ] Design clinician view / export
- [ ] Review existing nd-checkin.html and compare to new design (salvageable framings and UI patterns)
- [ ] Build nd-checkin from new design (one question at a time, frequency system, Supabase storage)
- [ ] Deploy to GitHub Pages
- [ ] Share with small tester group

---

## Phase 1 — Core Tools
*Goal: The tools that matter most to daily life*

- [ ] Daily Capacity Check-In (morning pulse, feeds task manager)
- [ ] Functional Pain Scale (ADL-based)
- [ ] Brain Dump / Task Manager (frictionless intake, capacity-aware filter)
- [ ] Basic shared data layer (capacity check-in → task manager filter)

---

## Phase 2 — Self-Discovery
*Goal: The tools that help users understand themselves*

- [ ] Burnout vs. Depression Distinguisher
- [ ] Somatic Symptom Interviewer (alexithymia support)
- [ ] Late-ID Autism Self-Discovery Tool
- [ ] Sensory Profile Builder
- [ ] Masking Load Tracker

---

## Phase 3 — Planning & Advocacy
*Goal: The tools that help users communicate their reality to others*

- [ ] Situation Planner (with Medical Appointment Prep template)
- [ ] Communication Script Generator
- [ ] Unified Clinician/Advocacy Report (pulls from multiple tools)

---

## Phase 4 — Depth & Polish
*Goal: Long-term tracking, sustainability, possible launch*

- [ ] Medication/Treatment Tracker
- [ ] Energy Envelope Tracker (ME/CFS, fibromyalgia)
- [ ] Late Diagnosis Grief Journal
- [ ] Sleep Quality Log
- [ ] Monetization decision
- [ ] Custom domain + public launch

---

## Naming
Working title: External Prefrontal Cortex
Naming session: TBD (after Phase 0 complete)

---

## Notes
- Tool scope is not fully locked — brainstorming is ongoing
- nd-checkin is being built fresh from new design; existing file will be reviewed for salvageable question framings and UI patterns (especially custom question builder) before build
- nd-checkin onboarding and clinician view are separate design tasks before build begins
- Medical Appointment Prep may stay as a Situation Planner template rather than a standalone tool
- Data sharing between tools is a platform-wide goal; user controls what connects to what
- No GitHub connector available in claude.ai connector registry; GitHub workflow handled via GitHub Desktop + Claude Code on laptop
- INSTRUCTIONS.md is currently saved as a .txt file in the repo — rename to INSTRUCTIONS.md when tidying
