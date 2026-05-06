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

## Platform Architecture — Three-Tier Model (Under Consideration)

*Not yet a firm decision, but live enough to shape design thinking. Surfaced during early planning. Matters most for the Brain Dump / Task Manager arm. Relevant wherever AI features are offered.*

1. **The Analog Engine** — no AI. Purely manual interface, complete user control, nothing leaves the machine. Less responsive, fewer automated features.
2. **The Local Sovereign** — downloaded, offline AI model. Full privacy, AI automation, requires more robust hardware.
3. **The Frictionless Cloud** — cloud-based API (Anthropic/Claude). Top-tier models, RAG memory, frictionless experience. User pays via API key or subscription.

Design implication: wherever an AI feature is designed (e.g. Q42 deeper exploration, Somatic Interviewer, Brain Dump sorting), a structured non-AI fallback should also be designed so the feature works for all tiers.

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

A temporary short-form the user can trigger on bad days. Does not change frequency settings — those stay locked.

**Default question set:** Q3 (sleep quality), Q4 (fatigue/sleepiness), Q5 (overall energy), Q10 (irritability), Q18 (concentration), Q20 (freeze response), Q40 (current capacity), Q42 (safety — always included)

**Customisable:** user can swap questions in/out; suggested cap of 8, hard cap of 10; Q42 cannot be removed.

**Trigger:** user-initiated; a clearly visible but low-pressure option on the check-in start screen.

**Setup timing:** prompted after the first check-in is complete, not during onboarding.

### Onboarding Flow

**Welcome screens (3, before onboarding begins):**
1. What this is and what it's for — platform-level; names the tool, what it tracks, why
2. Before we start — what onboarding involves; how long, what kind of questions, what it's setting up
3. A note on Q42 — signals that one question gets its own dedicated page later, and why

**Baseline questions (5):**
1. Sleep window — approximate; used to frame sleep questions
2. Work / study / regular commitments — yes/no; determines whether Section 8 appears
3. Pain — is pain a regular part of your experience? (yes/no; shapes pain question defaults)
4. Diagnoses and exploration areas — optional free text; used for clinician export context only; not required, does not change the questions
5. What brings you here — free text, optional; context only; not used clinically

**Three entry paths into the question walkthrough:**
Labels are first-person:
- "Walk me through each one" — full walkthrough with explanation before frequency setting
- "Show me the list, I'll decide" — condensed view, less scaffolding, same options
- "Set everything to default and let me start" — skips walkthrough; enters first check-in with all defaults; adjustable in settings

**Section-level walkthrough:**
- Each section introduced with a brief plain-language description
- Questions stepped through one at a time
- Frequency set per question; wording edits available; custom questions can be added
- Inheritance rule: section set to Off → individual questions default to Off, but can be overridden; Q42 exempt

**Low capacity mode setup:** prompted after first check-in, not during onboarding.

### Q42 — Safety Question

**Section header:** Safety — same weight and visual treatment as every other section.

**Framing note (between header and question):**
*"This is part of every check-in — not a response to anything you've said today."*
- Very brief. The onboarding page has already laid the foundation.
- No backward reference to previous check-ins — speaks only to now.
- Appears from check-in 2 onward, every time.

**Question — locked:**
*"Are you having thoughts about not being here anymore, or about whether you belong here at all?"*
- Deliberately broad — covers the full range without naming specific examples.
- The variations list does the anchoring work.

**Structure:** question first, variations after.

**Variations list ("This might include:"):**
- Feeling like you're a burden to the people around you
- Feeling like you're taking up space you haven't earned
- Thoughts that the world would be better without you
- Thoughts that it would be easier not to exist
- Going through the motions without knowing why you'd stay
- A bone-deep exhaustion that isn't physical — more like being tired of being you
- A feeling that people would be sorry, or would finally understand, if you were gone

**Response options:**
- No — not having thoughts like that
- Occasionally, but they pass
- More often — these thoughts come up regularly
- Yes — these thoughts are frequent or strong

**Notes field prompt:** *"Use this space if you'd like to say more about your answer."*

**Tier:** Always. Locked. Cannot be demoted or removed.

**Trigger logic:** Any response other than the first option triggers a gentle in-app acknowledgement, opens the notes field with a specific prompt, and offers a safety resource. Does not redirect away from the check-in unless the user chooses.

**Q42 onboarding page:** Q42 gets its own dedicated page during onboarding, seen once before the first check-in. Full draft complete — see `q42-onboarding-page-draft.md`. The page covers: what the question is asking (full range of experiences including passive ideation, burden, exhaustion, and anger/outward-facing experience); what it isn't asking (explicitly distinguishes from end-of-life belief and assisted dying); that these thoughts are common and often carried alone; the difference between having a thought and meaning it; the person with history who is currently okay; the person who isn't sure if what they're experiencing counts; what happens when you answer; and that this is routine, not reactive.

**Q42 deeper exploration feature — concept only, design deferred:**
After Q42, an optional space for the user to explore what answering the question felt like in their body, and what other things came up. Not yet designed. Must work across all three user tiers — a structured prompt version (no AI) and an AI-enhanced conversational version for cloud-tier users.

### Q42 Trigger Response

**Structure:** Two-part — immediate (in-place, one line) and end-of-check-in (fuller). The check-in continues normally after the immediate response.

**Immediate response — locked:**
*"Thank you. You can say more at the end if you want to."*

**End-of-check-in response — working draft:**

A development notice appears visibly at the top of this screen:
*"This part of the tool is still being developed. The response you see here is a placeholder — it will look quite different once we've had feedback from real users. If you have thoughts on what would have felt right, we'd love to hear them."*

Body copy (working draft — expected to change substantially after tester feedback):

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
- "We noticed that" was rejected as too surveillance-adjacent.
- Immediate response settled on "Thank you" — quiet, doesn't perform personhood, holds the door open.

**Resource layer — concept defined, detail TBD:**
- Warmlines and peer-support lines (not crisis lines) — lower threshold, more appropriate for the range of experiences Q42 catches
- Phone numbers to call or text, with pre-written scripts alongside each one to reduce friction for users who don't know what to say
- Chat link encoding to be researched — whether a starting message can be pre-populated into a warmline chat link
- Trusted person nudge — whether onboarding captures a named person is a separate decision not yet made; flagged for later
- Crisis line (988) included but positioned as the escalation option, not the first offer

### ND-Specific Question Design Notes

- **Anhedonia:** Framed through special interests and things that used to give energy — not just generic loss of pleasure
- **Cognitive:** Losing track of time is two separate questions: time-loss from hyperfocus/absorption vs. time-loss from fog/confusion/gaps. Plain-language descriptions distinguish the two clearly.
- **Freeze response:** Captured explicitly in cognitive/executive function section — framed as freeze driven by overwhelm or fear, not procrastination or not caring
- **ND-Specific:** Stimming, hyperfocus, special interests, and shutdown/meltdown each carry a secondary scale: "just observing — it's data" vs. "this caused me distress or interfered"
- **Derealization/depersonalization:** Small named subsection within Section 3 — *Sense of reality and self*. Three questions. Intro text normalises the experience before questions begin. Plain-language descriptions are both recognisable (so people who have it can identify it) and non-alarming (for people who haven't named it before). Questions cover: world feeling unreal/distant, feeling disconnected from self/body/thoughts, and how the person felt about the experience when it happened.
- **Masking gap:** The check-in includes a question on the effort of holding it together in public and the cost of the crash afterwards — distinct from the standalone Masking Load Tracker tool
- **Self-concept:** Separate question on how the user feels about themselves as a person — distinct from the burden/broken question
- **Social:** Interaction broken down by type (text, email, phone, video, in-person 1:1, in-person group) — user indicates which were manageable vs. difficult
- **Work:** Conditional section covering whether commitments were met, what it cost, what got in the way, and whether the current load is sustainable

### Clinician Export
- Organised by section, with clinical translations alongside user's own language
- Flags significant or gradual changes over time
- Free-text field specifically for what the user wants the clinician to know — displayed prominently
- Diagnosis/exploration information shared only with explicit user permission

### Still Open
- **Q42 deeper exploration feature** — concept noted; design deferred to its own session
- **Q42 trigger response copy** — working draft in place as placeholder; expected to iterate substantially after real tester feedback
- **Q42 trigger response resource layer** — warmline list, scripts alongside each, chat link encoding research needed
- **Q42 trusted person nudge** — whether onboarding captures a named person; not yet decided
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
* nd-checkin question set v2 complete; tweaking scope decided; onboarding flow substantially designed (welcome screens, baseline questions, three entry paths, low capacity mode complete); Q42 onboarding page drafted and approved; Q42 trigger response designed at concept level with working draft copy; Q42 check-in screen fully locked (Session 9); remaining design tasks before build: Q42 deeper exploration feature (deferred), Q42 trigger response resource layer, remaining onboarding UI detail, clinician view
* `q42-onboarding-page-draft.md` exists in repo — working draft, approved, expected to be tweaked during testing
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
