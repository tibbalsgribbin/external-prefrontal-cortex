# Changelog — External Prefrontal Cortex

---

## 2026-05-05 — Session 9: Q42 Check-In Screen Finalisation

### Decisions Made

**Q42 check-in screen — fully locked:**

Framing note (between "Safety" header and question):
*"This is part of every check-in — not a response to anything you've said today."*

- Weight: very brief — one or two sentences only. The onboarding page has already laid the foundation; this note signals routine, not reaction.
- No backward reference to previous check-ins — speaks only to now.
- Appears from check-in 2 onward, every time. After a while it may feel routine — that's the intention.

Question:
*"Are you having thoughts about not being here anymore, or about whether you belong here at all?"*

- Deliberately broad — covers the full range without naming specific examples. The examples list does the anchoring work.
- Previous wording ("Are you having thoughts that the world would be better without you, or that you don't deserve to take up space?") moved into the variations list as its own bullet.

Structure: question first, variations after.

Variations list ("This might include:"):
- Feeling like you're a burden to the people around you
- Feeling like you're taking up space you haven't earned
- Thoughts that the world would be better without you
- Thoughts that it would be easier not to exist
- Going through the motions without knowing why you'd stay
- A bone-deep exhaustion that isn't physical — more like being tired of being you
- A feeling that people would be sorry, or would finally understand, if you were gone

Notes field prompt:
*"Use this space if you'd like to say more about your answer."*

**Full Q42 check-in screen — locked:**

> *Safety*
>
> *This is part of every check-in — not a response to anything you've said today.*
>
> **Are you having thoughts about not being here anymore, or about whether you belong here at all?**
>
> This might include:
> - Feeling like you're a burden to the people around you
> - Feeling like you're taking up space you haven't earned
> - Thoughts that the world would be better without you
> - Thoughts that it would be easier not to exist
> - Going through the motions without knowing why you'd stay
> - A bone-deep exhaustion that isn't physical — more like being tired of being you
> - A feeling that people would be sorry, or would finally understand, if you were gone
>
> ○ No — not having thoughts like that
> ○ Occasionally, but they pass
> ○ More often — these thoughts come up regularly
> ○ Yes — these thoughts are frequent or strong
>
> *Notes field: "Use this space if you'd like to say more about your answer."*

**Q42 deeper exploration feature — concept noted, design deferred:**
- Idea: after Q42, an optional space for the user to explore what answering the question felt like in their body, and what other things came up.
- Not designed yet. Flagged for a future session.
- Design constraint: must work across all three user tiers (no AI, local AI, cloud AI) — likely a structured prompt version (no AI required) with an AI-enhanced conversational version for cloud-tier users.

**Three-tier architecture — documented as under consideration:**
Surfaced from earlier Gemini planning conversation. Not yet a firm decision, but live enough to shape design thinking. Tiers:
1. **The Analog Engine** — no AI. Purely manual interface, complete user control, nothing leaves the machine.
2. **The Local Sovereign** — downloaded, offline AI model. Full privacy, AI automation, requires more robust hardware.
3. **The Frictionless Cloud** — cloud-based API. Top-tier models, RAG memory, frictionless experience.

Matters most for the Brain Dump / Task Manager arm of the platform. Less critical for the nd-checkin, but relevant wherever AI features are offered (e.g. Q42 exploration, Somatic Interviewer).

### Files Updated This Session

* BRIEF.md — Q42 check-in screen fully documented and locked; Q42 deeper exploration feature flagged; three-tier architecture added as under consideration; still open updated; current state updated
* ROADMAP.md — Q42 check-in screen checked off; Q42 exploration feature added as future task; three-tier architecture noted
* CHANGELOG.md — this entry

### Still Open / Next Session

* Q42 deeper exploration feature — design deferred; needs its own session
* Q42 trigger response copy — working draft in place as placeholder; expected to change after tester feedback
* Q42 trigger response resource layer — warmline list, scripts, chat link encoding research needed
* Q42 trusted person nudge — not yet decided
* Remaining onboarding UI detail — choice screen visual; walkthrough UI; wording edit scaffolding; custom question builder
* Clinician view / export design
* Flagging logic for changes over time
* Review existing nd-checkin.html before build

---

## 2026-05-05 — Session 8: Q42 Trigger Response Design

### Decisions Made

**Trigger response structure:**
- Two-part response: immediate (in-place, one line) and end-of-check-in (fuller)
- Immediate response appears right after the user answers Q42; check-in continues normally
- End-of-check-in response appears when the check-in is complete

**Immediate response — locked:**
*"Thank you. You can say more at the end if you want to."*

**End-of-check-in response — working draft:**

A development notice appears at the top of this screen, visible to all users including testers:
*"This part of the tool is still being developed. The response you see here is a placeholder — it will look quite different once we've had feedback from real users. If you have thoughts on what would have felt right, we'd love to hear them."*

Body copy (working draft — acknowledged as needing further iteration with real feedback):

> **That deserves a moment.**
>
> Something came up in your check-in today. If it would help to talk to someone, here are some peer-support options — not crisis lines, just people:
>
> *[PLACEHOLDER — phone numbers to call or text, with scripts alongside each one.]*
>
> If what you're experiencing feels urgent, the 988 Suicide and Crisis Lifeline is available by call or text.
>
> You can come back to any of this later — it'll be here.
>
> *[Notes field — is there anything you want to say about what came up?]*

**Adjustment for most serious option** ("Yes — these thoughts are frequent or strong"): 988 moves above the peer-support options. Everything else stays the same.

**Notes field placement:** at the end of the trigger response screen, after the resources.

**Voice and language decisions:**
- "We" as the tool speaking about itself is out. "Let's" is acceptable — it frames the tool and user as partners.
- "We noticed that" was rejected — too surveillance-adjacent.
- Immediate response settled on "Thank you" — quiet, doesn't perform personhood, holds the door open.

**Resource layer — concept only, detail TBD:**
- Warmlines and peer-support lines (not crisis lines) — lower threshold, more appropriate for the range of experiences Q42 catches
- Phone numbers to call or text, with pre-written scripts alongside each one to reduce friction for users who don't know what to say
- Chat link encoding to be researched — whether a starting message can be pre-populated into a warmline chat link
- Trusted person nudge — flagged for later; whether onboarding captures a named person is a separate decision not yet made; for now, a general nudge only
- Crisis line (988) included but positioned as the escalation option, not the first offer

**Development notice decision:**
- Trigger response screen carries a visible notice that this section is in active development and will look different after tester feedback
- Feedback invite included in the notice — testers are explicitly asked what would have felt right

### Files Updated This Session

* BRIEF.md — Q42 trigger response fully documented; resource layer concept documented; development notice decision documented; still open updated; current state updated
* ROADMAP.md — Q42 trigger response checked off; remaining tasks updated
* CHANGELOG.md — this entry

### Still Open / Next Session

* Q42 trigger response copy — working draft approved as placeholder; expected to change substantially after real-world feedback
* Resource layer detail — warmline list, scripts, chat link encoding research needed
* Trusted person nudge — whether onboarding captures a named person; flagged, not yet decided
* Q42 check-in screen — framing note wording; final question block
* Remaining onboarding UI detail — choice screen visual; walkthrough UI; wording edit scaffolding; custom question builder
* Clinician view / export design
* Flagging logic for changes over time
* Review existing nd-checkin.html before build

---

## 2026-05-05 — Session 7: Q42 In-Context Framing Design

### Decisions Made

**Q42 section structure:**
- Section 11 gets a named header — "Safety" — same weight and visual treatment as every other section. No special treatment that signals alarm before the question arrives.
- A short framing note appears between the header and Q42. Purpose: normalise, and establish that this is routine not reactive. Wording not yet finalised.

**Q42 onboarding page:**
- Q42 gets its own dedicated page during onboarding, seen once before the first check-in. This is the place where the tool does the full nuanced work — so that every subsequent check-in can arrive at Q42 with that foundation already laid.
- Full draft written and approved as a working version. Expected to be tweaked during testing. Saved as `q42-onboarding-page-draft.md`.
- The page covers:
  - What the question is asking — full range of experiences: passive ideation, burden, exhaustion, anger/outward-facing ("I'll show them"), going through the motions
  - What it isn't asking — explicitly distinguishes from end-of-life belief and assisted dying; names this as a legitimate position held by many chronically ill people; makes clear the tool knows the difference
  - That these thoughts are more common than people say out loud, and are often carried alone
  - The difference between having a thought and meaning it — fleeting, intrusive thoughts count without implying intent
  - The person with history who is currently okay — this is not a relapse check
  - The person who isn't sure if what they're experiencing counts — uncertainty is valid, answer as best you can
  - What happens when you answer — honest, not alarming; user stays in control
  - That this question is part of every check-in — routine, not reactive

**Q42 question wording updated:**
- "easier" → "better": *Are you having thoughts that the world would be better without you, or that you don't deserve to take up space?*

**Q42 check-in screen variations substantially developed:**
- The direct question is now preceded by a list of variations — experiences that might be recognisable when the headline wording doesn't fit. Final block not yet locked.
- Variations developed: burden, unearned space, easier not to exist, going through the motions, bone-deep exhaustion that isn't physical, feeling people would be sorry or would finally understand
- Plain-language note replaced by variations list — the variations do the work of somatic/behavioural anchoring that plain-language notes do elsewhere

**Q42 design scope clarified:**
- The full range of experiences Q42 is trying to catch includes: passive ideation, burden/shame, exhaustion of existing, anger/outward-facing ideation, and the person who can't name what they're feeling
- The chronically ill user's relationship to death as choice is explicitly outside the scope of Q42 — and the tool says so
- These distinctions are held in the onboarding page, not in the check-in screen question itself

**Q42 trigger response:**
- Not yet designed. Next session.
- Must feel like a person noticed — not like an alert fired.

### Files Created This Session

* `q42-onboarding-page-draft.md` — full draft of Q42 onboarding page; working version approved

### Files Updated This Session

* BRIEF.md — Q42 design detail substantially expanded; onboarding page documented; check-in screen progress noted; trigger response flagged as next session; still open updated; current state updated
* ROADMAP.md — Q42 onboarding page checked off; trigger response and check-in screen finalisation added as separate tasks
* CHANGELOG.md — this entry

### Still Open / Next Session

* Q42 trigger response design (recommended next — must happen before build; do not squeeze)
* Q42 check-in screen — framing note wording; final question block
* Remaining onboarding UI detail — choice screen visual; walkthrough UI; wording edit scaffolding; custom question builder
* Clinician view / export design
* Flagging logic for changes over time
* Review existing nd-checkin.html before build

---

## 2026-05-05 — Session 6: Onboarding Flow Design

### Decisions Made

**Standing platform rules added (apply across all tools, not just nd-checkin):**
- Wherever the platform asks something of the user, there is more than one valid way in. Multiple entry points is the default.
- Transparency is structural throughout — at every step where the pacing or a question might feel unexpected, the tool explains itself in plain language. Not a disclaimer. An honest explanation.

**Welcome screens (3 screens before onboarding begins):**
1. What this is and what it's for — platform-level; names the tool, what it tracks, why
2. Before we start — what onboarding involves; how long, what kind of questions, what it's setting up
3. A note on Q42 — signals that one question gets its own dedicated page later, and why

**Baseline questions captured during onboarding (5):**
1. Sleep window — what time do you usually go to sleep / wake up (approximate; used to frame sleep questions)
2. Work / study / regular commitments — yes/no conditional; determines whether Section 8 appears
3. Pain — is pain a regular part of your experience? (yes/no; shapes pain question defaults)
4. Diagnoses and exploration areas — optional free text; used for clinician export context only; explicit note that this is not required and does not change the questions
5. What brings you here — free text, optional; for the tool's understanding of context; not used clinically

**Three entry paths into the question walkthrough:**
All three paths lead to the same walkthrough — they differ only in how much scaffolding is offered up front.

Labels are first-person, not instructional:
- "Walk me through each one" — full walkthrough with explanation of each question before the user sets frequency
- "Show me the list, I'll decide" — condensed view; less hand-holding, same options
- "Set everything to default and let me start" — skips walkthrough; enters first check-in immediately with all defaults; can adjust in settings at any time

**Section-level walkthrough design:**
- Each section is introduced with a brief plain-language description of what it covers and why
- User steps through questions one at a time within each section
- Frequency setting (Always / Occasional / Off) is set per question during walkthrough
- Wording edits available during walkthrough — scaffolded, not bare text boxes
- Custom questions can be added at the end of walkthrough or at any time via settings

**Inheritance rule:**
- If a user sets an entire section to Off, individual questions within it are set to Off by default — but can be overridden per question
- Q42 is exempt: Always, locked, not affected by section-level settings

**Low capacity mode setup timing:**
- Not introduced during initial onboarding — would add friction at the wrong moment
- Prompted after the first check-in is complete: "Some people find it helpful to set up a shorter version for difficult days. Want to do that now, or come back to it later?"

### Files Updated This Session

* BRIEF.md — onboarding flow design fully documented; standing platform rules added; still open updated; current state updated
* ROADMAP.md — onboarding flow checked off (substantially); remaining detail tasks noted
* CHANGELOG.md — this entry

### Still Open / Next Session

* Q42 in-context framing (recommended next — the onboarding page and trigger response depend on this)
* Remaining onboarding UI detail — choice screen visual design; question walkthrough UI; wording edit scaffolding detail; custom question builder detail
* Clinician view / export design
* Flagging logic for changes over time
* Review existing nd-checkin.html before build

---

## 2026-05-05 — Session 5: Tweaking Scope & Low Capacity Mode

### Decisions Made

**Tweaking scope — what users can adjust during onboarding:**
Full control during onboarding, before frequency settings lock in:
- Frequency (Always / Occasional / Off) for every question except Q42
- Question wording — any standard question can be reworded
- Plain-language descriptions — editable alongside question wording
- Custom questions — can be added during onboarding or any time via settings

All edits scaffolded — not bare text boxes. UI makes clear what kinds of changes are meaningful, and that the user can revert per-question at any time via settings.

Q42 special treatment: Always-lock and trigger logic are hard-coded and cannot be changed. The trigger fires on response option selected, not on question wording — so it holds regardless of edits. UI makes this explicit. Scaffolding for Q42 edits frames them as being in service of the question's purpose (genuine safety question, in language that fits the user better) — not as customisation for comfort.

**Low capacity mode — fully designed:**
- A temporary short-form the user can trigger on bad days
- Does not change frequency settings — those stay locked
- Default question set: Q3 (sleep quality), Q4 (fatigue/sleepiness), Q5 (overall energy), Q10 (irritability), Q18 (concentration), Q20 (freeze response), Q40 (current capacity), Q42 (safety — always included)
- Customisable: user can swap questions in/out (suggested cap of 8; hard cap of 10); Q42 cannot be removed
- Trigger: user-initiated; a clearly visible but low-pressure option on the check-in start screen
- Setup: prompted after first check-in, not during onboarding

**Structural exceptions to frequency system confirmed:**
  * Q42 Safety — Always, locked; cannot be demoted or removed
  * Section 8 Work & Commitments — conditional on onboarding, not part of frequency system in same way
  * Q17 Response to derealization/depersonalization — logically follows Q15+Q16; removal of those removes this

### Files Updated This Session

* BRIEF.md — tiered system replaced with frequency system; low capacity mode added; still open updated
* ROADMAP.md — session 4 decisions reflected in Phase 0
* CHANGELOG.md — this entry

### Still Open / Next Session

* Tweaking scope — separate design conversation
* Onboarding flow design (separate session)
* Clinician view / export design (separate session)
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
