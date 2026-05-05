# Changelog — External Prefrontal Cortex

---

## 2026-05-05 — Session 6: Onboarding Flow Design

### Decisions Made

**Standing platform rules added (apply across all tools, not just nd-checkin):**
* Multiple entry points is a core rule — wherever the platform asks something of the user, there is more than one valid way in. Respects ND experience. Applies to onboarding and everywhere else.
* Transparency is structural throughout — at every step where pacing or a question might feel unexpected, the tool explains itself in plain language: why this question, why now, what it's used for, who sees it. Not a disclaimer. An honest explanation.

**Welcome screens (three screens before onboarding begins):**
* Screen 1 — Recognition: leads with the user's experience, names the gap between lived experience and standard questionnaires, no diagnosis required, no right way to use it
* Screen 2 — What it is: plain description of the check-in; brief disclaimer framed as honest information — not a medical tool, not peer-reviewed, designed to bridge the gap alongside clinical care not replace it; does not name specific clinical tools (PHQ-9 etc.) by name — describes the gap without naming
* Screen 3 — How it works: private by default, nothing shared without user choice, works on bad days, user sets it up their own way; fuller disclaimer here as elaboration of screen 2's mention; note that five baseline questions come first and why
* Draft copy approved as starting point; will tweak after seeing in action

**Onboarding entry points:**
* Three genuinely equal paths, first-person labels, no hierarchy, no default
* Labels: *"I like to know what I'm getting into before I start"* / *"I'd rather figure out what's relevant as I go"* / *"I just want to get started"*
* Path 1: full section-by-section walkthrough before first check-in
* Path 2: baseline only upfront; one section of walkthrough offered after each check-in; progress visible; can switch to doing the rest at once
* Path 3: baseline only; straight into first check-in; full walkthrough in settings anytime; gentle prompts over time, never pushy
* Switching between paths always possible

**Baseline questions (all three paths):**
* Own distinct step before question walkthrough; five questions, one per screen; framed as "a few things we need to get started"; each screen explains why the question is asked and what the answer is used for
* Q1: Sleep pattern
* Q2: Approximate sleep window
* Q3: Commitments (determines whether Section 8 appears)
* Q4: Pain baseline — check-in descriptors plus optional free text for type and location
* Q5: Diagnoses / exploration areas — clearly skippable, low-friction skip, explicit about purpose and privacy

**Question walkthrough:**
* Section-level: section name, one-line description, frequency control for whole section
* Expand any section to see and adjust individual questions — not required
* Inheritance: section setting applies to all questions inside it; individual overrides take precedence; section-level Off nudge makes clear what the user is turning off
* Wording edits and custom question builder available throughout

**Low capacity mode — fully designed:**
* Trigger: start screen button + persistent unobtrusive mid check-in link at bottom of every question screen
* Trigger wording: *"This is too much today"*
* Answers carry over when switching mid check-in
* Default question set: Q3, Q4, Q5, Q10, Q18, Q20, Q40, Q42
* Customisable: user can swap questions in/out; suggested cap 8, hard cap 10; Q42 always included and locked
* Setup prompted after first full check-in (not during onboarding)
* Default question set flagged for review after testing

**Q42 safety question — design principle added:**
* The in-context framing of Q42 within the check-in, and the tone of what happens when someone answers anything other than "No," require their own careful design
* Must feel like a person noticed — not like an alert fired
* This is a separate design task to be completed before build
* Applies check-in 1 through check-in 50 — framing must stay genuine, not become a formality

### Files Updated This Session

* BRIEF.md — two new standing platform rules; welcome screens documented; onboarding entry points documented; baseline questions documented; question walkthrough documented; low capacity mode fully documented; Q42 framing flagged as separate design task; still open updated; current state updated
* ROADMAP.md — onboarding flow progress reflected; Q42 framing and remaining UI detail added as separate tasks; standing platform rules noted
* CHANGELOG.md — this entry

### Still Open / Next Session

* Q42 in-context framing and trigger response design (recommended next — must happen before build)
* Remaining onboarding UI detail — choice screen visual; walkthrough UI; wording edit scaffolding; custom question builder
* Clinician view / export design
* Flagging logic for changes over time
* Review existing nd-checkin.html before build

---

## 2026-05-05 — Session 5: Tweaking Scope

### Decisions Made

* **Full control during onboarding** — before frequency settings lock in, users can adjust:
  * Frequency (Always / Occasional / Off) for every question except Q42
  * Question wording (any standard question)
  * Plain-language description underneath each question
  * Custom questions (add their own, with their own response types)

* **All edits are scaffolded** — not bare text boxes. UI makes clear that edits should be done thoughtfully. Suggests what kinds of changes are meaningful (e.g. swapping in language that better fits how a state feels for this person). Reminds the user they can revert to original wording at any time via settings. Revert is per-question — not all-or-nothing.

* **Q42 (safety question) — special treatment confirmed:**
  * Always-lock and trigger logic are hard-coded and cannot be changed by the user
  * Trigger logic fires on response option selected, not on question wording — holds regardless of how the question is reworded
  * UI makes this explicit: purpose and behaviour of the question are fixed
  * Wording edits are framed as being in service of that same seriousness — the question must remain a genuine safety question in language that fits the user better
  * Scaffolding for Q42 reflects this framing

### Files Updated This Session

* BRIEF.md — tweaking scope section added; Q42 safety note expanded; still open updated; current state updated
* ROADMAP.md — tweaking scope checked off with decision summary
* CHANGELOG.md — this entry

### Still Open / Next Session

* Onboarding flow design (recommended next — includes low capacity mode content and trigger)
* Clinician view / export design
* Flagging logic for changes over time
* Detailed review of existing nd-checkin.html before build

---

## 2026-05-05 — Session 4: Frequency System Design

### Decisions Made

* Tiered system (Always / Complete only / Never) replaced with a frequency system:
  * **Always** — every check-in
  * **Occasional** — user-set frequency (weekly, monthly, or custom)
  * **Off** — hidden unless restored in settings
* Everything defaults to Always. The tool does not pre-decide what is worth tracking. Users demote or remove during onboarding.
* Brief / Complete distinction removed. The check-in is shaped by the user's own frequency settings, not a pre-defined split.
* **Low Capacity Mode** confirmed: temporary short-form triggered by the user on bad days. Fixed high-signal questions plus safety question. Does not change settings — next check-in returns to normal. Content, trigger, and customisation TBD in onboarding design session.
* Tweaking scope (what users can adjust before settings lock in) flagged as its own design conversation before build.
* Structural exceptions confirmed:
  * Q42 Safety — Always, locked, cannot be removed or demoted
  * Section 8 Work & Commitments — conditional on onboarding, not part of frequency system in same way
  * Q17 Response to derealization/depersonalization — logically follows Q15+Q16; removal of those removes this

### Files Updated This Session

* BRIEF.md — tiered system replaced with frequency system; low capacity mode added; still open updated
* ROADMAP.md — session 4 decisions reflected in Phase 0
* CHANGELOG.md — this entry

### Still Open / Next Session

* Tweaking scope — separate design conversation
* Onboarding flow design (includes low capacity mode content and trigger)
* Clinician view / export design
* Flagging logic for changes over time
* Detailed review of existing nd-checkin.html before build

---

## 2026-05-05 — Session 3: GitHub Setup & Question Set Completion

### Decisions Made

* GitHub Desktop installed and connected to tibbalsgribbin/external-prefrontal-cortex
* Project documents (BRIEF, ROADMAP, CHANGELOG, INSTRUCTIONS) committed to repo — project now has a home
* GitHub Pages not enabled yet — correct, nothing to host until first HTML file exists
* INSTRUCTIONS.md currently saved as .txt in repo — to rename when tidying
* nd-checkin question set v2 complete — three pending additions resolved:
  1. **Hopelessness question:** distinction between personal hopelessness and reasonable response to world events is visible in the question itself (not a hidden branch). Plain-language description names both explicitly. Notes field always visible with prompt. Clinician view flags world-events hopelessness as contextual.
  2. **Time-loss split (Q20):** now two separate questions — hyperfocus/absorption time-loss vs. fog/confusion/gaps time-loss. Plain-language descriptions distinguish clearly.
  3. **Derealization/depersonalization subsection:** three questions under named subsection *Sense of reality and self* within Section 3. Intro text normalises before questions begin. Language is both recognisable and non-alarming. Covers: world feeling unreal, feeling disconnected from self, and how the user felt about the experience.
* Existing nd-checkin.html reviewed against v2 — salvageable elements identified: anhedonia framed through special interests, masking gap question, freeze response framing, future-feeling question, self-concept question, custom question builder UI. These flagged for detailed comparison before build.
* File creation rule clarified: Claude does not produce files until Melissa has given explicit go-ahead

### Files Updated This Session

* BRIEF.md — three question additions documented; current state updated; salvageable elements flagged
* ROADMAP.md — GitHub repo checked off; nd-checkin question set v2 checked off; salvageable elements note added
* CHANGELOG.md — this entry

### Still Open / Next Session

* Full default tier assignments for all questions
* Onboarding flow design (separate session)
* Clinician view / export design (separate session)
* Flagging logic for changes over time
* Detailed review of existing nd-checkin.html before build begins

### Known Issues

* nd-checkin.html: results page and clinician view render blank (existing bug — file will be reviewed before build)

---

## 2026-05-05 — Session 2: ND Check-In Design

### Decisions Made

* nd-checkin.html is not just a bug fix — it is being reconceived from early design stage
* Format: one question at a time (not wall of text); language tweaks expected throughout
* Tiered check-in system: Always / Complete only / Never — user assigns each question; locked in for tracking consistency
* Onboarding: present defaults, let user adjust before first check-in; baseline established at onboarding and updated from history over time
* Onboarding captures: sleep pattern, sleep window, commitments, pain baseline, diagnoses/exploration areas
* Every question has a notes field
* Mixed response types: frequency-based and functional/experiential, depending on question
* Somatic and behavioural anchors alongside emotional language throughout
* Section structure confirmed (11 sections + custom questions — see BRIEF.md)
* Sleep section: accounts for split sleep, naps, distinguishes waking-during vs. waking-for-the-day, clarifies fatigue vs. sleepiness
* Pain: captures range across the day, not a snapshot
* Mood: physical/behavioural descriptions on every question; hopelessness question explicitly separates personal hopelessness from reasonable response to world events — clinician view notes the distinction
* Cognitive: losing track of time distinguishes hyperfocus from fog
* New section: ND-Specific Experience — stimming, hyperfocus, special interests, shutdown/meltdown; each has an observing vs. distress distinction
* Social: interaction broken down by type (text, email, phone, video, in-person)
* New section: Work & Regular Commitments (conditional on onboarding)
* Derealization/depersonalization: small named subsection within Section 3 (recommendation accepted)
* Safety question: Always tier, cannot be removed; non-negative response triggers gentle acknowledgement + safety resource
* Clinician export: organised by section, clinical translations alongside user language, prominent display of user's clinician-specific notes
* Flagging: tool will flag significant or gradual changes over time
* No GitHub connector exists in claude.ai registry; confirmed across multiple searches
* Two Claude Desktop instances on same machine: not officially supported; workarounds exist but are technical. Decision: use separate laptop for this project's Desktop instance

### Files Updated This Session

* BRIEF.md — added full nd-checkin design detail section
* ROADMAP.md — Phase 0 expanded to reflect actual nd-checkin scope
* CHANGELOG.md — this entry

### Still Open / Next Session

* Three pending additions to question set v2:
  1. World-is-on-fire distinction near Q16 (hopelessness)
  2. Q20 split: hyperfocus time-loss vs. cognitive fog time-loss
  3. Derealization/depersonalization subsection (2–3 questions)
* Full default tier assignments for all questions
* Onboarding flow design (separate session)
* Clinician view / export design (separate session)
* Flagging logic for changes over time
* Review existing nd-checkin.html before build begins

### Known Issues

* nd-checkin.html: results page and clinician view render blank (existing bug — file will be reviewed before build, not before design is complete)

---

## 2026-05-05 — Session 1: Project Setup & Scoping

### Decisions Made

* Working title: External Prefrontal Cortex
* Platform scope: comprehensive multi-tool, built in phases
* Tech stack confirmed: GitHub Pages → Supabase → HTML/CSS/JS + Anthropic API
* Data storage: Supabase (not localStorage)
* Hosting: GitHub Pages now, custom domain later
* Audience: ND and/or chronically ill adults; small trusted tester group currently
* Core design principle locked: *"The user is always empowered and has choices that respond to their particular needs. The interface always makes things clear in natural language, without condescending."*
* Advocacy output mode confirmed as platform-wide principle (not just wellness check-in)
* Situation Planner defined: sequential steps, emotional/physical/sensory cost per step, capacity-matched timing, help flags, advocacy outputs. Medical Appointment Prep is a template within it.
* Tool universe drafted (16 tools across 4 categories — see BRIEF.md)
* Monetization: not decided yet
* Naming: working title only, naming session TBD

### Files Created This Session

* BRIEF.md
* INSTRUCTIONS.md
* ROADMAP.md
* CHANGELOG.md

### Known Issues

* nd-checkin.html: results page and clinician view render blank (demo data flow bug from previous session)

### Not Started Yet

* GitHub repo
* Supabase project
* Any code changes
