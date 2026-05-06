# Changelog — External Prefrontal Cortex

---

## 2026-05-06 — Session 13: Q42 Resource Layer, Trusted Person Nudge, nd-checkin.html Review

### Decisions Made

**Trusted person nudge — decided:**
- No name captured during onboarding
- Trigger screen uses a generic nudge at most: *"Is there someone you trust you could reach out to today?"*
- May be cut entirely after tester feedback — not a locked element
- Rationale: ND population skews toward isolation; assuming a trusted person exists could sting at exactly the wrong moment
- "People in my corner" noted as a future feature idea — not in scope

**Q42 resource layer — fully locked:**

Resource list (in order of appearance on screen):
1. NAMI HelpLine — call 1-800-950-6264 or text "NAMI" to 62640; M–F 10am–10pm ET; peer support staffed by people with lived experience
2. Crisis Text Line — text HOME to 741741; free, confidential, 24/7
3. warmline.org — national directory; links to state-specific peer lines; note that hours and coverage vary
4. 988 Lifeline — call or text 988, or chat at chat.988lifeline.org; 24/7; escalation option, not first offer; moves to top for most serious response option

Chat link encoding research finding: pre-populated messages cannot be injected into warmline or 988 chat URLs — those services use custom tools that don't support URL parameters. Tap-to-text SMS links with pre-filled keywords are supported for text options.

**Resource card format:**
Each NAMI and Crisis Text Line card includes: name, one-line description, contact method, hours, what to expect before connecting (prep text), and a script picker (collapsed by default).

NAMI prep text:
- *If you call:* Short automated menu (language selection), then hold music, then a person picks up and introduces themselves, asks "How may I help you?"
- *If you text:* Send "NAMI" to 62640, specialist responds directly

Crisis Text Line prep text:
- *What happens:* Automated confirmation first, then a counselor joins and opens the conversation

**Script picker — locked:**
- Trigger label: *"What to say when they ask how they can help"* (NAMI) / *"What to say when they check in"* (Crisis Text Line)
- Collapsed by default, revealed on tap
- 4 pre-written options, selectable by tap; selected option highlights and stays visible for reference
- 5th option: *"Write your own"* — opens inline text field; stays visible once written
- On close/navigate away with typed text: *"Save this for next time, or just keep it for now?"* → Save / Just for now
- Save = persists and pre-populates next time; Just for now = session-only

NAMI scripts (after "How may I help you?"):
1. *"I'm having a hard time and I'm not sure I'm okay. I just needed to talk to someone."*
2. *"Something came up today and it's sitting heavy. I don't really know where to start."*
3. *"I've been struggling. I'm not in crisis, but I'm not doing well either."*
4. *"I'm having a hard day and I could use some support."*

Crisis Text Line scripts (when counselor checks in):
1. *"I'm having a hard time and I'm not sure I'm okay."*
2. *"Something came up today and it's sitting heavy."*
3. *"I've been struggling. Not in crisis, but not okay either."*
4. *"I'm having a hard day and I needed somewhere to put it."*

**nd-checkin.html review — complete:**

Salvageable language and UI patterns from the existing file, documented for use during build:
- Anhedonia plain-language description: *"Not bored — more like you look at something you love and feel nothing."* Keep exactly.
- Special interests response options: functional scale (*They still light me up / Sometimes but I can still get into them / It takes huge effort to start / Even my favourites feel hollow*) — better than frequency scale for this question
- Freeze response description: *"Freeze response looks like procrastination but is driven by overwhelm or fear."* Keep exactly.
- Masking/gap framing: *"The gap between how you seem and how you are."* Keep.
- Future-feeling plain-language description: *"Not pessimism — more like the future doesn't feel real or reachable right now."* Keep exactly.
- Self-concept parenthetical: *"Not your skills or output — just you, existing in the world."* Keep.
- Q43 prompt examples: already in v2, confirmed good
- Sensory tolerance description: *"Sensory thresholds often drop when we're struggling mentally."* Keep.
- Custom question builder UI: reference during build for inline edit and remove/confirm patterns
- "Edit this question" link placement: reference during build

**Design phase declared complete.** All nd-checkin design is locked. Build is next.

### Files Updated This Session

* BRIEF.md — Q42 resource layer fully documented and locked; trusted person nudge decision documented; nd-checkin.html salvageable elements documented; design phase complete noted in current state; still open updated; remaining design items removed
* ROADMAP.md — Session 13 items checked off; resource layer and trusted person nudge marked complete; nd-checkin.html review marked complete; build noted as next phase; notes updated
* CHANGELOG.md — this entry

### Still Open / Next Session

* Build — first session: set up GitHub Pages + Supabase, then begin nd-checkin.html from scratch (one question at a time, frequency system, Supabase storage)
* Q42 trigger response copy — working draft in place; iterate after tester feedback (not a blocker for build)
* nd-checkin public-facing name — before launch, not before build
* Flagging logic implementation detail — resolved during build

---

## 2026-05-06 — Session 12: Q42 Deeper Exploration Feature

### Decisions Made

**Q42 deeper exploration feature — locked:**

- **Heading:** Say more
- **Entry points:** Two — visible on trigger response screen (scroll down, it's there) + explicit "Say more" button opening a dedicated screen; same content either way
- **Prompt chips:** 4 tappable, first-person, all optional: (1) *What's happening in my body right now* (2) *What brought this up today* (3) *Something I want to remember about this* (4) *Something I'd want to say to someone*
- **Behaviour:** Tapping a chip anchors it in the open text space; cursor lands after it; multiple chips can be combined or ignored; user can write freely without using any
- **Text space:** Single open field that accumulates everything
- **Storage:** Separate record from the notes field on the trigger response screen; viewable alongside notes in history; no decision required from user in the moment
- **Exit options:** Save / Save draft (come back later) / Discard (confirmation prompt if anything has been typed)
- **Tier note:** Structured prompt version works for all three tiers; AI-enhanced conversational version for cloud-tier users is a future consideration only

### Files Updated This Session

* BRIEF.md — Q42 deeper exploration feature documented and locked; still open updated; current state updated
* ROADMAP.md — Session 12 items checked off; remaining design tasks updated
* CHANGELOG.md — this entry

### Still Open / Next Session

* Q42 resource layer — warmline list, scripts, chat link encoding research (Session 13)
* Q42 trusted person nudge — not yet decided (Session 13)
* Q42 trigger response copy — working draft in place; iterate after tester feedback
* Review existing nd-checkin.html before build (Session 13)

---

## 2026-05-06 — Session 11: Wording Edit Scaffolding, Custom Question Builder, Clinician Export

### Decisions Made

**Wording edit scaffolding — locked:**

- **Trigger:** "Edit wording" link on question screen; quiet, understated; appears below plain-language description, above frequency toggle
- **Behaviour:** Expands inline — no modal, no new screen; frequency toggle collapses while editing is open, restores on save or cancel
- **What opens:** Question text field + plain-language description field (both open simultaneously), pre-populated with current wording; examples block between the two fields; Save / Cancel buttons
- **Examples block:**
  - *Examples of edits that work:* "How did your sleep go?" → "Did I actually sleep, or just lie there?" / "How is your energy right now?" → "How wrecked do I feel right now?"
  - *Examples that change the meaning too much:* "How is your energy right now?" → "Did I exercise today?" *(this is a different question)*
- **On save:** Fields close, frequency toggle restores, new wording renders in place; line appears briefly then fades: *"Saved — you can revert this any time in settings."*
- **On cancel:** Fields close, frequency toggle restores; no changes, no confirmation
- **Revert:** Per-question in settings, any time; reverts to original standard wording (not to a previous edit)

**Q42 special treatment — same mechanic, different examples block:**
- *Works:* "Are you having thoughts about not being here anymore..." → "Are you having thoughts that it would be easier to disappear?"
- *Changes meaning too much:* Changing it to something that no longer asks about these kinds of thoughts
- Locked note (not editable, visually quieter): *"The way this question works in the background can't be changed. It responds to which answer you choose, not the specific words."*

**Custom question builder — locked:**

- **Where it lives:** End of onboarding question walkthrough (before onboarding completes) + settings any time after onboarding
- **Onboarding introduction:** Brief prompt after last standard question: *"You can add your own questions to track things the standard set doesn't cover — a specific symptom, a pattern you've noticed, anything you want to keep an eye on. They'll appear at the end of every check-in and chart over time alongside the rest."* Two buttons: Add a question / Skip for now
- **Builder:** Inline form with four fields: (1) Question text — required, placeholder *"What do you want to track?"*; (2) Clarifying note — optional, placeholder *"A bit more context for yourself, if useful."*; (3) Response type — Frequency scale / Yes–Sometimes–No / Free text; (4) Frequency toggle — Always (default) / Occasional / Off with standard hint line
- **On save:** Form resets; Add another / Done options appear
- **On cancel:** Form closes, no changes
- **Settings management:** Each question listed with response type and frequency; Edit / Change frequency / Delete per question; Delete requires confirmation: *"Remove this question? Your past responses will be kept."*; no limit on number of custom questions
- **Charting:** Custom questions chart over time in History alongside standard questions
- **Note:** Existing nd-checkin.html custom question builder was previously flagged as salvageable; builder is now designed from scratch; review existing file before build for useful UI details only — no longer the reference point

**Clinician export — locked:**

- **Format:** PDF download (printable) + shareable link (read-only view) — user chooses at export time
- **Date range:** User sets manually every time; no assumed default
- **Shareable link expiry:** User chooses at generation time — expires after set period, or stays live until revoked; revocation available any time in settings
- **Export header:** Date range / number of check-ins in period / user's name (optional) / diagnosis and exploration areas (only with explicit per-export permission) / Q45 clinician note prominently before all section data
- **Body:** Per-response clinical translations for flagged/significant items (user's wording shown as-is, clinical reframe alongside); section summary interpretation for the rest; user's own language never replaced, only accompanied; clinical translations neutral and descriptive
- **Flagging criteria (five):** (1) Response significantly worse than user's personal baseline; (2) Gradual downward trend across multiple check-ins; (3) Any non-first-option response on Q42; (4) Question skipped repeatedly; (5) Significant change in either direction — sudden improvement flagged as well as decline
- **Flags Summary block:** Collected flags appear immediately after the header, before section data

**Naming noted:**
- nd-checkin tool needs a public-facing name before launch; internal working name continues for now
- Naming session TBD after Phase 0 complete

### Files Updated This Session

* BRIEF.md — wording edit scaffolding documented and locked; custom question builder documented and locked; clinician export documented and locked; naming note added; still open updated; current state updated
* ROADMAP.md — Session 11 items checked off; naming task added to Phase 0; notes updated
* CHANGELOG.md — this entry

### Still Open / Next Session

* Q42 deeper exploration feature — design deferred; needs its own session (Session 12); must work across all three user tiers
* Q42 trigger response resource layer — warmline list, scripts, chat link encoding research (Session 13)
* Q42 trusted person nudge — not yet decided (Session 13)
* Q42 trigger response copy — working draft in place; iterate after tester feedback
* "Walk me through" option labels — exact wording deferred to build
* Review existing nd-checkin.html before build (Session 13)
* nd-checkin public-facing name — before launch
* Flagging logic implementation detail — to be resolved during build

---

## 2026-05-05 — Session 10: Onboarding UI Design (Choice Screen, Question Walkthrough, Section Intro)

### Decisions Made

**Choice screen — locked:**

Framing line: *"There are a few ways to get started."*

Four options on one screen:
- [label TBD — walk me through, section by section] — *Each question with context, one at a time*
- [label TBD — walk me through, all in one flow] — *Each question with context, one at a time*
- **Show me the list, I'll decide** — *See all the questions at once and set your preferences*
- **Set everything to default and let me start** — *Skip setup and go straight to your first check-in*

Structure decision: organisation preference (section by section vs. all in one flow) is folded into the entry path choice — one screen, four options — rather than two separate screens. The two "walk me through" option labels are structurally decided but exact wording is deferred to build.

Language rule confirmed: no interface personification — option descriptions avoid "I" and "we".

**Question walkthrough screen — locked:**

Progress display:
- Two stacked bars, left-aligned, at the top of every question screen
- Each bar has its label directly above it, in a colour matching the bar
- Overall progress: purple label and bar
- Current section: teal label showing the actual section name (e.g. "Sleep & Rest"), not "This section"
- No numbers anywhere — bars only

Question screen layout (top to bottom):
- Progress block (two labelled bars)
- Question text
- Plain-language description — always visible, never hidden
- Frequency control labelled: *"How often should this question appear in your check-in?"*
- Three-button toggle: Always (default) / Occasional / Off
- Hint line: *"Everything starts on Always. You can change this any time in settings."*
- Edit wording link (quiet, understated)
- Navigation: Back / Skip for now / Next

Section name is not repeated above the question — the progress block handles orientation.

**Section intro screen — locked:**

- Section title only — no section number (e.g. no "Section 1 of 13")
- 2–3 sentences describing what the section covers and why
- Progress bars do not appear on section intro screens — only on question screens
- Navigation: Back / Skip this section / Next

### Files Updated This Session

* BRIEF.md — choice screen documented and locked; question walkthrough screen documented and locked; section intro screen documented and locked; still open updated; current state updated
* ROADMAP.md — Session 10 items checked off; remaining tasks updated
* CHANGELOG.md — this entry

### Still Open / Next Session

* Wording edit scaffolding — recommended first item for Session 11
* Custom question builder detail — Session 11
* "Walk me through" option labels — exact wording deferred to build
* Clinician export design — Session 11
* Q42 deeper exploration feature — deferred to Session 12
* Q42 resource layer and trusted person nudge — Session 13
* Review existing nd-checkin.html — before build

---

## 2026-05-05 — Session 9: Q42 Onboarding Page, Check-in Screen, Trigger Response

### Decisions Made

**Q42 onboarding page — locked:**
Full draft complete — see `q42-onboarding-page-draft.md`. Covers: what the question is asking (full range including passive ideation, burden, exhaustion, anger/outward-facing); what it isn't asking (end-of-life belief, assisted dying distinction); thoughts are common and often carried alone; difference between having a thought and meaning it; person with history who is currently okay; person who isn't sure if it counts; what happens when you answer; routine not reactive.

**Q42 check-in screen — locked:**
- Framing note: *"This is part of every check-in — not a response to anything you've said today."*
- Question: *"Are you having thoughts about not being here anymore, or about whether you belong here at all?"*
- Structure: question first, variations list after ("This might include:")
- Variations (7): burden, taking up unearned space, world better without you, easier not to exist, going through the motions, bone-deep exhaustion of being tired of being you, people would be sorry/understand if you were gone
- Response options: No — not having thoughts like that / Occasionally, but they pass / More often — these thoughts come up regularly / Yes — these thoughts are frequent or strong
- Notes field prompt: *"Use this space if you'd like to say more about your answer."*

**Q42 trigger response — working draft:**
- Immediate response (locked): *"Thank you. You can say more at the end if you want to."*
- End-of-check-in response: working draft with development notice; resource layer and trusted person nudge to be designed in Session 13
- Adjustment for most serious option: 988 moves above peer-support resources

**Voice and language decisions:**
- "We" as the tool speaking about itself is out
- "Let's" is acceptable — frames tool and user as partners
- "We noticed that" rejected as surveillance-adjacent
- "Thank you" settled as immediate response — quiet, doesn't perform personhood

### Files Updated This Session

* BRIEF.md — Q42 onboarding page, check-in screen, trigger response all documented
* ROADMAP.md — Session 9 items checked off
* CHANGELOG.md — this entry

---

## 2026-05-05 — Session 8: Onboarding Flow Design

### Decisions Made

* Three welcome screens (not one) — introduction / what it tracks / what you control
* Baseline questions (5) captured at onboarding: typical sleep window, pain baseline, work/study/commitments, diagnoses/exploration areas, communication preference
* Four entry paths confirmed — walk me through (section by section), walk me through (all in one flow), show me the list, set everything to default
* Section-level frequency inheritance confirmed — demoting a section demotes all its questions with individual override available
* Low capacity mode setup: prompted after first check-in, not during onboarding
* Language: no interface personification throughout onboarding

### Files Updated This Session

* BRIEF.md — onboarding flow documented
* ROADMAP.md — Session 8 items checked off
* CHANGELOG.md — this entry

---

## 2026-05-05 — Session 7: Q42 Onboarding Page Draft

### Decisions Made

* Q42 onboarding page scope defined — dedicated page seen once before first check-in
* Draft written and approved — see `q42-onboarding-page-draft.md`
* End-of-life and assisted dying explicitly distinguished
* Page covers: full range of experiences, common-but-unspoken, thought vs. intent, history, uncertainty, what happens, routine not reactive

### Files Updated This Session

* q42-onboarding-page-draft.md — created
* BRIEF.md — Q42 onboarding page noted
* ROADMAP.md — Session 7 items checked off
* CHANGELOG.md — this entry

---

## 2026-05-05 — Session 6: Low Capacity Mode

### Decisions Made

* Low capacity mode confirmed as a temporary short-form, triggered by user, does not change frequency settings
* Default question set: Q3, Q4, Q5, Q10, Q18, Q20, Q40, Q42
* Suggested cap 8, hard cap 10; Q42 doesn't count toward cap
* Setup timing: after first check-in, not during onboarding
* Trigger: prominent option on check-in start screen

### Files Updated This Session

* BRIEF.md — low capacity mode documented
* ROADMAP.md — Session 6 items checked off
* CHANGELOG.md — this entry

---

## 2026-05-05 — Session 5: Frequency System & Onboarding Scope

### Decisions Made

* Frequency system renamed: Always / Occasional / Off (was Always / Complete only / Never)
* Everything defaults to Always — tool does not pre-decide what matters
* Frequency settings locked in per-user after onboarding for tracking consistency
* Tweaking scope defined — full control during onboarding over frequency, wording, descriptions, custom questions
* Q42 always-lock and trigger logic confirmed as hard-coded and not user-adjustable

### Files Updated This Session

* BRIEF.md — frequency system and tweaking scope documented
* ROADMAP.md — Session 5 items checked off
* CHANGELOG.md — this entry

---

## 2026-05-05 — Session 4: Question Set Review & Format Rules

### Decisions Made

* Format rules confirmed: one question at a time, always-visible notes field, mixed response types, somatic/behavioural anchors throughout
* Question set v2 reviewed section by section — framings confirmed
* Masking gap question added — distinct from Masking Load Tracker tool
* Self-concept question confirmed as separate from burden/broken question

### Files Updated This Session

* nd-checkin-questions-v2.md — format rules added; all questions reviewed
* BRIEF.md — format rules and question design notes updated
* ROADMAP.md — Session 4 items checked off
* CHANGELOG.md — this entry

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
