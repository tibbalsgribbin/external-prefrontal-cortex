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

### Tiered Check-In System
Users assign every question (including custom questions) to one of three tiers:
- **Always** — appears in both Brief and Complete check-ins
- **Complete only** — appears when the user selects a full check-in
- **Never** — hidden unless the user goes into settings to restore it

Onboarding presents sensible defaults; users adjust before their first check-in. Tier assignments are locked in per-user so tracking stays consistent over time.

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
- **Mood:** All questions include physical and behavioural descriptions of what each state might look like; Q on hopelessness explicitly separates "hopeless about my life" from "the world is genuinely bad right now" — clinician view notes this distinction rather than flattening it into a depression indicator
- **Cognitive:** Losing track of time distinguishes hyperfocus absorption from cognitive fog/disorientation
- **ND-Specific:** Stimming, hyperfocus, special interests, and shutdown/meltdown each carry a secondary scale: "just observing — it's data" vs. "this caused me distress or interfered"
- **Social:** Interaction broken down by type (text, email, phone, video, in-person 1:1, in-person group) — user indicates which were manageable vs. difficult
- **Work:** Conditional section covering whether commitments were met, what it cost, what got in the way, and whether the current load is sustainable
- **Safety question (Q17):** Always tier, cannot be removed. Any non-negative response triggers a gentle in-app acknowledgement, opens notes field, and offers a safety resource

### Clinician Export
- Organised by section, with clinical translations alongside user's own language
- Flags significant or gradual changes over time
- Free-text field (Q46) specifically for what the user wants the clinician to know — displayed prominently
- Diagnosis/exploration information shared only with explicit user permission

### Still Open
- Full default tier assignments for all questions
- Onboarding flow design (UX)
- Clinician view / export design
- Flagging logic for changes over time
- Comparison to existing nd-checkin.html (to happen before build begins)

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

* `nd-checkin.html` exists — being reconceived from scratch in design; existing file will be reviewed and compared before build begins
* Everything else is planned only
* No GitHub repo yet
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
