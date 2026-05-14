# Roadmap — External Prefrontal Cortex

---

## Phase 0 — Foundation (Current)
*Goal: Working infrastructure and one solid tool*

- [x] Create GitHub repo
- [ ] Set up GitHub Pages — index.html built and ready; enable in repo Settings → Pages
- [ ] Create Supabase project
- [ ] Set up Supabase Auth (email login, no password manager friction)
- [x] Complete nd-checkin question set design (v2 complete)
- [x] Frequency system designed (Always / Occasional / Off — everything Always by default)
- [x] Low capacity mode fully designed — trigger wording, default question set (Q3, Q4, Q5, Q10, Q18, Q20, Q40, Q42), customisable with suggested cap of 8 and hard cap of 10, setup prompted after first check-in
- [x] Tweaking scope decided — full control during onboarding: frequency, question wording, plain-language descriptions, custom questions; all edits scaffolded; per-question revert available in settings; Q42 trigger logic and Always-lock hard-coded and cannot be changed
- [x] Onboarding flow substantially designed — welcome screens (3), baseline questions (5), four entry paths, section-level walkthrough with inheritance, low capacity mode setup timing
- [x] Q42 onboarding page drafted and approved — dedicated page seen once during onboarding before first check-in; covers full range of experiences, end-of-life distinction, common-but-unspoken, thought vs. intent, history, uncertainty, what happens when you answer, routine not reactive; see `q42-onboarding-page-draft.md`
- [x] Q42 trigger response designed — immediate response locked; end-of-check-in response working draft complete (carries development notice; expected to change substantially after tester feedback); resource layer fully designed and locked; trusted person nudge decided (no name captured, generic nudge or none); adjustment for most serious response option defined
- [x] Q42 check-in screen finalised and locked — framing note, question wording, structure (question first / variations after), full variations list (7 items), notes field prompt; see BRIEF.md
- [x] Q42 deeper exploration feature designed and locked — "Say more" heading, two entry points, four first-person prompt chips, single open text space, separate storage record, three exit options; see BRIEF.md
- [x] Q42 resource layer fully designed and locked — NAMI HelpLine, Crisis Text Line, warmline.org directory, 988; resource card format with prep text and script picker; 4 scripts per resource + "Write your own" field with save/session choice; trusted person nudge decision made; see BRIEF.md
- [x] Onboarding UI — choice screen locked
- [x] Onboarding UI — question walkthrough screen locked
- [x] Onboarding UI — section intro screen locked
- [x] Wording edit scaffolding designed and locked
- [x] Custom question builder designed and locked
- [x] Clinician export designed and locked
- [x] Existing nd-checkin.html reviewed — salvageable language and UI patterns documented in BRIEF.md; design phase complete
- [x] nd-checkin.html built from scratch — Q1–Q41 and Q43–Q45 fully functional; Q42 placeholder; localStorage persistence; full check-in and low capacity mode; section intros; all response types; summary and JSON export
- [x] index.html placeholder built — ready to push and enable GitHub Pages
- [x] supabase-schema.sql written — ready to run in Supabase SQL editor when connecting
- [x] **Check-in named: No Really. How *Are* You?** (Session 15) — short form: *No Really.* Locked.
- [x] **Testing companion built — `no-really-testing.html`** (Session 15) — separate file, walks testers through the full question set with per-question feedback panels, wrap-up feedback, pause/resume, optional handle, save-mode toggle. Submits to Google Form.
- [x] **Feedback channel live** (Session 15) — Google Form *No Really — Tester Feedback* + linked Google Sheet, owned by `noreally.howareyou@gmail.com`
- [x] **First tester walkthrough complete** (Session 15) — Melissa as first tester; pipeline verified end-to-end; eight critical fixes triaged
- [x] **Session 16 — Critical fixes to testing companion before wider testing:**
  - [x] Notes vs Thoughts label confusion — Notes relabelled "Your notes (stays on your device)"; feedback button "Feedback on this question"; panel copy updated; "Melissa" replaced with "the build team" throughout
  - [ ] Pause-and-return — explicit "Resume now" affordance; clearer return instructions on pause screen *(deferred to Session 17)*
  - [x] Frequency scale visual — replaced 8-square scale + readout with auto-wrapping word pills (Never / Rarely / Sometimes / Noticeably / Often / Most days / Almost always / Near constant). 4-across on desktop, 2-across on mobile
  - [ ] Q42 placeholder honesty — replace with gist text until full build *(deferred to Session 17)*
  - [x] Grey text legibility throughout — two-pass fix: first bumped `--text-dim`/`--text-dimmer` for WCAG AA, then promoted virtually all "content" elements (plain-language, subsection intros, part labels, notes label, notes typed text, placeholder card, grid headers, feedback panel description, tagline, etc.) to full `--text`. Only Skip / Cancel / Feedback-toggle / chip-default stay dim
  - [ ] Notes persistence + "View my saved notes" screen *(deferred to Session 17)*
  - [x] Q39 "unexplained" wording — rewritten as "physical symptoms... that don't have an obvious cause"
  - [x] Audit and remove "ND" / audience-naming throughout — tagline, intro copy, Q10/Q15/Q39 plain-language, section name "ND-Specific Experience" → "Stimming, Focus & Special Interests", section intro for S6
- [x] **Session 16 — extended scope (not on original list):**
  - [x] Q26 / Q27 / Q28 gained plain-language boxes with concrete varied examples (recognition, not labels)
  - [x] Q33 (holding-it-together-in-public + crash) split into a two-part question using `si-two` pattern with custom Part 1 / Part 2 labels
  - [x] Q41 plain-language now defines PEM (post-exertional malaise) inline
  - [x] Q45 reframed away from clinician: *"Is there something you've been carrying that's hard to put into words — even here?"*
  - [x] Q26 / Q27 / Q28 / Q29 Part 2 switched to multi-select (mutual-exclusivity audit). Added `p2multi:true` flag for clean multi-select support in multi-part question types
- [x] **Session 17 — Notes persistence, Q42 placeholder, tester nav tools:**
  - [x] Notes persistence + "View my saved notes" screen — Notes always persist regardless of save-mode; new append-only `nr_records_v1` store; maximalist view-notes screen with progressive-disclosure edit/delete + bulk Copy/Delete-all; accessible from intro, resume, pause modal, and thanks screens; save-mode toggle reworded to *Start fresh every time / Remember me on this device*
  - [x] Q42 placeholder honesty — replaced placeholder with rich three-prompt card naming what the question asks (self-harm / not wanting to be alive), explaining why the full build is held back, and inviting lived-experience input. Each prompt tagged distinctly in feedback pipeline (`q42_lived_experience` / `q42_phq9_response` / `q42_better_version`). PHQ-9 item 9 wording quoted verbatim.
  - [x] Tester-visible *"Skip remaining questions and go directly to final feedback"* link at bottom of every question
  - [x] Hidden dev mode (triple-click section label) — Jump-to-Q#, Jump-to-wrap-up, Jump-to-thanks; opt-in remember-across-reloads; safe-by-default (clears on refresh unless remembered)
  - [x] **Foundation built: append-only record store for future longitudinal features.** sessionId + qVersion + timestamp on every record. Future history view / pattern surfacing / advocacy export will be a port to Supabase, not a redesign.
- [ ] **Session 18 — finish critical fixes + plan next phase:**
  - [ ] Pause-and-return — explicit "Resume now" affordance; clearer return instructions (carried from Session 17)
  - [ ] After this lands — share with wider tester group
- [ ] **Future dedicated session: The middle path between 8 and 45 questions** *(Session 17)* — current architecture is binary (Low Capacity Mode / Full check-in); users will want a meaningful middle. Core design question touching question architecture, user mental model, advocacy output, and longitudinal data model. Possible directions: section-based picker, "what matters most today" front-loading, curated "core 20." Not a quick fix.
- [ ] Q7 pain question redesign — dedicated session (range mismatch + gastrointestinal symptoms gap)
- [ ] Q42 full build in nd-checkin.html (dedicated session — read BRIEF.md Q42 sections before starting)
- [ ] Connect nd-checkin.html to Supabase (after UI is stable)
- [ ] Onboarding build (after check-in UI is stable)
- [ ] Deploy to GitHub Pages (index.html ready — enable in Settings)
- [ ] Q42 trigger response copy — iterate after real-world tester feedback
- [ ] **Polish / v2 list (deferred):**
  - [ ] Day-mode / night-mode toggle
  - [ ] Q2 hours-of-sleep input ergonomics (chips or sensible default vs half-hour increments)
  - [ ] Q29 examples for highly-masking shutdowns/meltdowns
  - [ ] Refactor question source to a shared `questions.json` (eliminate duplication between nd-checkin.html and no-really-testing.html)
  - [ ] Q29 Part 1 multi-select consideration *(Session 16 audit)* — "Both" is a synthetic option; real multi-select would be cleaner
  - [ ] Q1 sleep multi-select consideration *(Session 16 audit)* — some options can co-occur
- [ ] **Future design sessions (no urgency, but on the radar):**
  - [ ] Helplessness as a distinct construct from hopelessness *(Session 16)* — likely new item near Q11 in Mood & Emotional Experience
  - [ ] Empathy-overflow / vicarious distress experience *(Session 16)* — Melissa's "sin-eater" experience; connected to helplessness; design where it lives, how to phrase, response structure

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
- Platform working title: External Prefrontal Cortex (TBD — may be renamed; not customer-facing yet)
- Check-in tool: **No Really. How *Are* You?** (short form: **No Really**) — locked Session 15
- Other tools: working titles only, naming sessions TBD as each tool approaches build

---

## Notes
- Tool scope is not fully locked — brainstorming is ongoing
- nd-checkin first build complete (Session 14); testing companion built and feedback pipeline live (Session 15)
- Underlying file is still `nd-checkin.html` — code-level references retain "nd-checkin" until a dedicated rename pass; user-facing surface uses *No Really. How* Are *You?*
- Testing companion (`no-really-testing.html`) is a sibling file, separate from the real check-in; both load their question data independently for now
- **Voice/framing principle (Session 15):** the check-in does not name its audience inside the questions; *neurodivergent* is the word in full; "ND" abbreviation is removed from user-facing copy
- Section 8 (Work & Regular Commitments) defaults to visible in current build; will be conditional once onboarding is built
- Q42 trigger response copy is a working placeholder — expected to change substantially after tester feedback
- "Walk me through" option labels: structure decided (section by section / all in one flow); exact wording deferred to build
- Three-tier architecture (Analog Engine / Local Sovereign / Frictionless Cloud) under consideration — not yet decided; matters most for Brain Dump / Task Manager; relevant wherever AI features are designed; non-AI fallback should be designed alongside any AI feature
- Medical Appointment Prep may stay as a Situation Planner template rather than a standalone tool
- Data sharing between tools is a platform-wide goal; user controls what connects to what
- Multiple entry points is a standing platform rule — wherever the platform asks something of the user, there is more than one valid way in
- Transparency is structural throughout — every step explains itself in plain language
- No GitHub connector available in claude.ai connector registry; GitHub workflow handled via GitHub Desktop + Claude Code on laptop
- INSTRUCTIONS.md is currently saved as a .txt file in the repo — rename to INSTRUCTIONS.md when tidying
- Google account for tester feedback: `noreally.howareyou@gmail.com` (separate from Melissa's main Google account; intentional, so future support emails and contact addresses have the right brand identity from day one)
