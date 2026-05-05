# External Prefrontal Cortex — Project Brief

*Working title. Naming TBD.*

---

## What This Is

A comprehensive digital platform for neurodivergent (ND) people and people with chronic illness or pain. It replaces fragmented, neurotypical-designed tools with a unified, ND-affirming environment where data flows between tools and the user is always in control.

**The two jobs this platform does:**

1. **Internal** — help the user understand themselves, manage capacity, and get through the day
2. **External** — help them communicate their reality to people who have power over their care (doctors, employers, family)

Every tool has an **advocacy output mode**: a way to export what the user knows about themselves in a format others can act on.

---

## Core Design Principles

**The user is always empowered and has choices that respond to their particular needs. The interface always makes things clear in natural language, without condescending.**

* Tools share data with each other where it's useful — but the user controls what connects to what
* No neurotypical assumptions baked in silently
* No fake empathy from the AI. Empathy is structural: the tool accommodates chaos, holds information, and only surfaces what the user can handle
* No scores or percentages that trigger productivity shame where avoidable
* Every tool works for someone who is having a bad brain day
* "It depends" is always a valid answer
* The platform never deletes anything without explicit user action
* Every tool has an onboarding process that takes into account different types of ND and communication preferences
* **Wherever the platform asks something of the user, there is more than one valid way in.** Multiple entry points is the default. This applies to onboarding and anywhere else the tool makes a demand on the user.
* **Transparency is structural throughout.** At every step where the pacing or a question might feel unexpected, the tool explains itself in plain language — why this question, why now, what it's used for, who sees it. Not a disclaimer. An honest explanation.

---

## Who It's For

ND and/or chronically ill adults — particularly late-identified, high-masking, and/or those with conditions like fibromyalgia, ME/CFS, autism, ADHD. People who have been dismissed by medical systems and need tools that take their experience seriously.

**Not for clinicians** — but clinicians are the audience for some outputs.

---

## The Tool Universe

### Tracking & Clinical

1. **ND Wellness Check-In** — depression/anxiety reframed for ND. Replaces PHQ-9/GAD-7. *In early design — see below.*
2. **Functional Pain Scale** — ADL-based ("can you put on socks?") not 1–10
3. **Masking Load Tracker** — cumulative cost of performance over time
4. **Medication/Treatment Tracker** — functional impact over time, not a pill reminder
5. **Energy Envelope Tracker** — for ME/CFS and fibromyalgia; flags PEM risk

### Self-Discovery

6. **Late-ID Autism Self-Discovery Tool** — nuanced, context-sensitive, generates a personal profile not a score
7. **Burnout vs. Depression Distinguisher** — interactive, since they look similar but have opposite treatments
8. **Sensory Profile Builder** — maps sensitivities/tolerances; advocacy doc for new environments
9. **Somatic Symptom Interviewer** — for alexithymia; starts with physical sensations, names what you're feeling

### Daily Function

10. **Daily Capacity Check-In** — quick morning pulse feeding the task manager's filter
11. **Brain Dump / Task Manager** — frictionless intake, AI sorts by energy/acuity/physical capacity

### Planning & Advocacy

12. **Situation Planner** — "I have X coming up." Breaks into sequential steps, estimates emotional/physical/sensory cost per step, recommends what kind of day to attempt each, flags where help is needed, generates advocacy outputs. Medical Appointment Prep is a built-in template/mode of this tool.
13. **Communication Script Generator** — drafts hard conversations in the user's own voice
14. **Late Diagnosis Grief Journal** — structured prompts for processing a late diagnosis

### Possibly Later

15. **Sleep Quality Log** — ND-specific quality tracking
16. **Brainstorm / Situation Prep** *(may merge with Situation Planner)*

---

## ND Wellness Check-In — Design Detail

*This tool is in active early design. An existing nd-checkin.html file exists but is being substantially reconceived.*

### Format
- One question at a time (not a wall of text)
- Every question has a notes field for elaboration
- Mixed response types: frequency-based where it maps to clinical tools, functional/experiential where it doesn't
- Somatic and behavioural anchors offered alongside emotional language throughout
- Questions presented with plain-language descriptions of what each state might look, feel, or behave like

### Frequency System
Every question (including custom questions) has a frequency setting:
- **Always** — appears in every check-in
- **Occasional** — appears at a user-set frequency (weekly, monthly, or custom)
- **Off** — hidden unless the user restores it in settings

**Everything defaults to Always.** The tool does not pre-decide what is worth tracking. During onboarding, users go through all questions and demote or remove anything that isn't relevant to them. Frequency settings are locked in per-user so tracking stays consistent over time; they can be adjusted in settings at any time.

### Tweaking Scope — What Users Can Adjust During Onboarding

During onboarding, before frequency settings lock in, users have full control over:

- **Frequency** — set Always / Occasional / Off for every question (except Q42, which is Always and locked)
- **Question wording** — any standard question can be reworded to fit the user's own language
- **Plain-language descriptions** — the description underneath each question can also be edited
- **Custom questions** — users can add their own questions with their own response types

**How editing is handled — applies to all questions:**
All edits are scaffolded, not bare text boxes. The UI makes clear that edits should be done thoughtfully, suggests what kinds of changes are meaningful (e.g. swapping in language that better fits how a particular state feels for this person), and reminds the user that they can revert to the original wording at any time via settings. Reverting is per-question — not all-or-nothing.

**Q42 (safety question) — special treatment:**
The Always-lock and trigger logic on Q42 are hard-coded and cannot be changed by the user. The trigger logic fires based on the response option selected, not on the question text — so it holds regardless of how the wording is edited. The UI makes this explicit: the user is told that the purpose and behaviour of this question are fixed. Any wording edits should preserve the seriousness of the question — it must remain a genuine safety question, in language that fits the user better. The scaffolding for Q42 reflects this: edits are framed as being in service of that same purpose, not as customisation for comfort.

### Low Capacity Mode

A temporary short-form check-in the user can trigger on bad days. Does not change any frequency settings — next check-in returns to normal automatically.

**Trigger:**
- Available on the check-in start screen before the user begins
- Also available as an escape hatch mid check-in — a persistent, unobtrusive link at the bottom of every question screen
- Trigger wording: *"This is too much today"*
- Answers already given carry over when switching mid check-in
- Language is deliberately non-clinical and non-judgmental — using it is not framed as a failure

**Default question set (8 questions):**
Q3 (sleep quality), Q4 (fatigue vs. sleepiness), Q5 (overall energy), Q10 (irritability), Q18 (concentration), Q20 (freeze response), Q40 (current capacity), Q42 (safety — always included, locked)

**Customisation:**
- Fixed by default; user can adjust which questions appear
- Suggested cap of 8 questions; hard cap of 10
- Q42 always included and cannot be removed
- Setup is prompted after the first full check-in — not during onboarding, when the experience of the full check-in isn't yet known
- Default question set flagged for review after testing

**Q42 in-context framing and trigger response language:**
The way Q42 is introduced within the check-in, and the tone of what happens when someone answers anything other than "No," requires its own careful design. It must feel like a person noticed — not like an alert fired. This is a separate design task to be completed before build. See Still Open below.

### Onboarding Flow

Onboarding has four jobs: establish baseline, walk through questions, add custom questions, set up low capacity mode.

**Welcome screens (three screens before onboarding begins):**

Screen 1 — Recognition. Leads with the user's experience, not a description of the tool. Named the gap between lived experience and what standard questionnaires capture. No diagnosis required. No right way to use it.

Screen 2 — What it is. Plain description of the check-in: what it tracks, why it's built differently, what it produces. Includes a brief disclaimer, framed as honest information not fine print: this is not a medical tool and doesn't try to be; not peer-reviewed or clinically validated; designed to sit alongside clinical care and bridge the gap, not replace it.

Screen 3 — How it works. Private by default. Nothing shared without the user's choice. Works on bad days. User sets it up their own way at their own pace. Brief note that five baseline questions come first and why.

Fuller disclaimer on screen 3: expands on screen 2's brief mention. Framed as part of the explanation of what the tool is — not a caveat appended at the end.

**Onboarding entry points — choice screen (after welcome screens):**

Three genuinely equal paths, presented with first-person labels and plain-language descriptions of what each involves. No path is positioned as the recommended or default option.

- *"I like to know what I'm getting into before I start"* — full section-by-section walkthrough before first check-in
- *"I'd rather figure out what's relevant as I go"* — baseline only upfront, one section of walkthrough offered after each check-in
- *"I just want to get started"* — baseline only, straight into first check-in, full walkthrough available in settings anytime

Switching between paths is always possible. The choice screen itself explains what each path involves and why someone might choose it.

**Baseline questions (all three paths, own distinct step before the question walkthrough):**

Five questions, one per screen. Framed as "a few things we need to get started" — not setup overhead. Each screen explains why that question is being asked and what the answer is used for.

1. Sleep pattern (one block / split / naps / irregular)
2. Approximate sleep window (reference, not a rule)
3. Commitments — work, study, or regular responsibilities (yes/no; determines whether Section 8 appears)
4. Pain baseline — check-in descriptors (no pain / mild / moderate / significant / severe) plus optional free text for type and location; explained as a reference point for contextualising daily check-in responses
5. Diagnoses / exploration areas — clearly skippable with low-friction skip; explicit that this shapes language surfaced to the user, is not a clinical record, and is not shared without their explicit permission

**Question walkthrough (Path 1 in full; Paths 2 and 3 gradually or via settings):**

Section-level: user sees each section name, a one-line description, and sets a default frequency for the whole section. Can expand any section to see and adjust individual questions — but doesn't have to.

Inheritance: when a user sets a section to Occasional or Off, all questions inside inherit that setting. Individual question overrides take precedence over section setting. Section-level Off nudge makes clear that none of the questions in that section will appear, so the user knows what they're turning off.

Wording edits and custom question builder available throughout the walkthrough.

**Low capacity mode setup:**
Prompted after the first full check-in. Also accessible from settings at any time.

### Onboarding Baseline
Before the first check-in, the tool establishes:
- Sleep pattern (one block, split, naps, irregular)
- Approximate sleep window (used as a reference, not a rule)
- Whether the user has work, study, or regular commitments
- Pain baseline (typical pain on an average day)
- Relevant diagnoses or areas of exploration (used to surface relevant language — not shared with clinician without permission)

Baseline updates over time as check-in history accumulates.

### Section Structure (v2)
1. Sleep & Rest
2. Energy & Physical Capacity
3. Mood & Emotional Experience *(includes small subsection on derealization/depersonalization)*
4. Cognitive & Executive Function
5. Sensory Experience
6. ND-Specific Experience *(stimming, hyperfocus, special interests, shutdown/meltdown — each with observing vs. distress distinction)*
7. Social & Communication
8. Work & Regular Commitments *(conditional on onboarding — shown only if user has commitments)*
9. Daily Function & Self-Care
10. Capacity & Crash Risk
11. Free-Form Entries
12. Custom Questions

### Key Design Decisions
- **Sleep:** Accounts for split sleep, naps, very long naps; distinguishes waking during a sleep period from waking for the day; establishes and references individual baseline; clarifies fatigue vs. sleepiness in plain language
- **Pain:** Captures range across the day (not a snapshot); includes location and type characterisation
- **Mood:** All questions include physical and behavioural descriptions of what each state might look like; hopelessness question makes the distinction between personal hopelessness and reasonable response to world events visible in the question itself (not a hidden branch) — plain-language description explicitly names both; notes field always visible with prompt to say more; clinician view flags world-events hopelessness as contextual rather than purely symptomatic
- **Anhedonia:** Framed through special interests and things that used to give energy — not just generic loss of pleasure
- **Cognitive:** Losing track of time is two separate questions: time-loss from hyperfocus/absorption vs. time-loss from fog/confusion/gaps. Plain-language descriptions distinguish the two clearly.
- **Freeze response:** Captured explicitly in cognitive/executive function section — framed as freeze driven by overwhelm or fear, not procrastination or not caring
- **ND-Specific:** Stimming, hyperfocus, special interests, and shutdown/meltdown each carry a secondary scale: "just observing — it's data" vs. "this caused me distress or interfered"
- **Derealization/depersonalization:** Small named subsection within Section 3 — *Sense of reality and self*. Three questions. Intro text normalises the experience before questions begin. Plain-language descriptions are both recognisable (so people who have it can identify it) and non-alarming (for people who haven't named it before). Questions cover: world feeling unreal/distant, feeling disconnected from self/body/thoughts, and how the person felt about the experience when it happened.
- **Masking gap:** The check-in includes a question on the effort of holding it together in public and the cost of the crash afterwards — distinct from the standalone Masking Load Tracker tool
- **Self-concept:** Separate question on how the user feels about themselves as a person — distinct from the burden/broken question
- **Social:** Interaction broken down by type (text, email, phone, video, in-person 1:1, in-person group) — user indicates which were manageable vs. difficult
- **Work:** Conditional section covering whether commitments were met, what it cost, what got in the way, and whether the current load is sustainable
- **Safety question (Q42):** Always, locked — cannot be demoted or removed. Trigger logic (non-negative response → gentle acknowledgement + notes field + safety resource) is hard-coded and fires on response option selected, not on question wording. Wording can be edited but the UI makes explicit that the purpose and behaviour of the question are fixed; edits must preserve its seriousness as a genuine safety question. Scaffolding reflects this. The in-context framing of Q42 within the check-in, and the tone of the trigger response, require their own careful design — this is a separate task before build.

### Clinician Export
- Organised by section, with clinical translations alongside user's own language
- Flags significant or gradual changes over time
- Free-text field specifically for what the user wants the clinician to know — displayed prominently
- Diagnosis/exploration information shared only with explicit user permission

### Still Open
- **Q42 in-context framing and trigger response design** — how the question is introduced within the check-in, and the tone of what the tool does when someone answers anything other than "No." Must feel like a person noticed, not like an alert fired. Separate design task, to be completed before build.
- Remaining onboarding design — choice screen visual design; question walkthrough UI detail; wording edit scaffolding detail; custom question builder detail
- Clinician view / export design
- Flagging logic for changes over time
- Review existing nd-checkin.html before build — compare question framings for salvageable language and UI patterns (custom question builder in particular)

---

## Tech Stack

| Layer | Choice |
|---|---|
| Hosting | GitHub Pages (now) → custom domain (later) |
| Database | Supabase |
| Auth | Supabase Auth |
| Frontend | HTML/CSS/JS (single files per tool, no framework for now) |
| AI features | Anthropic API (Claude) |
| Version control | GitHub + GitHub Desktop |

---

## Current State

* GitHub repo created: tibbalsgribbin/external-prefrontal-cortex
* Project documents (BRIEF, ROADMAP, CHANGELOG, INSTRUCTIONS) committed to repo
* GitHub Pages not yet enabled — no HTML to host yet
* `nd-checkin.html` exists — being reconceived from scratch in design; existing file will be reviewed and compared before build begins
* nd-checkin question set v2 complete; tweaking scope decided; onboarding flow substantially designed (welcome screens, baseline questions, three entry paths, low capacity mode complete); remaining design tasks before build: Q42 framing, remaining onboarding UI detail, clinician view
* Everything else is planned only
* No Supabase project connected yet
* Audience: small trusted tester group

---

## Monetization

Not decided. To be revisited once the platform has real users.

---

## What Melissa Does / What Claude Does

**Melissa:** Direction, decisions, testing, copy approval, project management
**Claude:** All coding, all file edits, proactive process guidance, session structure

*Melissa tests by using the thing — not by reading code.*
