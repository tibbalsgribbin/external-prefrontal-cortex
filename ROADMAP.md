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
- [x] Low capacity mode fully designed — trigger wording, default question set (Q3, Q4, Q5, Q10, Q18, Q20, Q40, Q42), customisable with suggested cap of 8 and hard cap of 10, setup prompted after first check-in
- [x] Tweaking scope decided — full control during onboarding: frequency, question wording, plain-language descriptions, custom questions; all edits scaffolded; per-question revert available in settings; Q42 trigger logic and Always-lock hard-coded and cannot be changed
- [x] Onboarding flow substantially designed — welcome screens (3), baseline questions (5), three entry paths with first-person labels, section-level walkthrough with inheritance, low capacity mode setup timing
- [x] Q42 onboarding page drafted and approved — dedicated page seen once during onboarding before first check-in; covers full range of experiences, end-of-life distinction, common-but-unspoken, thought vs. intent, history, uncertainty, what happens when you answer, routine not reactive; see `q42-onboarding-page-draft.md`
- [x] Q42 trigger response designed — immediate response locked; end-of-check-in response working draft complete (carries development notice; expected to change substantially after tester feedback); resource layer concept defined (warmlines, scripts, chat link research needed, trusted person nudge flagged); adjustment for most serious response option defined
- [x] Q42 check-in screen finalised and locked — framing note, question wording, structure (question first / variations after), full variations list (7 items), notes field prompt; see BRIEF.md
- [x] Onboarding UI — choice screen locked (framing line, four options, descriptions, no interface personification)
- [x] Onboarding UI — question walkthrough screen locked (two-bar progress, section name in teal bar, frequency toggle with label and hint line, plain-language descriptions always visible, navigation pattern)
- [x] Onboarding UI — section intro screen locked (title only, no section number, 2–3 sentence description, no progress bars, Skip this section / Next navigation)
- [ ] Q42 deeper exploration feature — concept noted; design deferred (needs its own session; must work across all three user tiers)
- [ ] Q42 trigger response — resource layer detail (warmline list, scripts, chat link encoding research)
- [ ] Q42 trigger response — trusted person nudge decision (whether onboarding captures a named person)
- [ ] Q42 trigger response copy — iterate after real-world tester feedback
- [ ] Wording edit scaffolding detail — Session 11
- [ ] Custom question builder detail — Session 11
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
- nd-checkin onboarding substantially designed; Q42 check-in screen locked; choice screen, question walkthrough screen, and section intro screen all locked; remaining design tasks before build: wording edit scaffolding, custom question builder, clinician view
- Q42 trigger response is designed at concept level; copy is a working placeholder expected to change after tester feedback; resource layer detail and trusted person nudge decision are still open
- "Walk me through" option labels: structure decided (section by section / all in one flow); exact wording deferred to build
- Three-tier architecture (Analog Engine / Local Sovereign / Frictionless Cloud) under consideration — not yet decided; matters most for Brain Dump / Task Manager; relevant wherever AI features are designed; non-AI fallback should be designed alongside any AI feature
- Medical Appointment Prep may stay as a Situation Planner template rather than a standalone tool
- Data sharing between tools is a platform-wide goal; user controls what connects to what
- Multiple entry points is a standing platform rule — wherever the platform asks something of the user, there is more than one valid way in
- Transparency is structural throughout — every step explains itself in plain language
- No GitHub connector available in claude.ai connector registry; GitHub workflow handled via GitHub Desktop + Claude Code on laptop
- INSTRUCTIONS.md is currently saved as a .txt file in the repo — rename to INSTRUCTIONS.md when tidying
