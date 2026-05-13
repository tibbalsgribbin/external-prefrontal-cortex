# External Prefrontal Cortex — Project Brief

*Platform working title — naming still TBD. The check-in tool is named: **No Really. How* Are *You?** (short form: **No Really**).*

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

1. **No Really. How *Are* You?** *(the check-in)* — depression/anxiety reframed for the people who don't see themselves in the short forms. Replaces PHQ-9/GAD-7. *Build in progress — first tool MVP in `nd-checkin.html`, testing companion in `no-really-testing.html`. Underlying file/code names retain "nd-checkin" until a clean rename pass.*
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

## No Really. How *Are* You? — Design Detail

*Public-facing name locked Session 15. Underlying file is `nd-checkin.html` and code-level references retain "nd-checkin" until a dedicated rename pass. Design phase complete. Build in progress — first version of check-in shipped Session 14; testing companion (`no-really-testing.html`) shipped Session 15. Q42 full build still pending.*

**Tagline / positioning:** *"A long-form mental health check-in for people who don't see themselves in the short forms."* (Locked Session 15.)

**Voice / framing principle (locked Session 15):**
The check-in does not name its audience inside the questions. Phrases like "for many ND people..." or "especially for ND people" are removed throughout. The audience self-identifies by recognising themselves in the descriptions. Naming the audience is the same move as fake empathy — empathy is structural, not announced. Plain-language clarifications describe the experience precisely; they do not tell the user who they are.

**Abbreviation rule (locked Session 15):**
"ND" is in-group shorthand. User-facing copy uses *neurodivergent* in full, or — better — describes the experience without labeling the audience at all. Project documents (BRIEF, ROADMAP, CHANGELOG) may continue to use "ND" for brevity.

**No-Really brand voice — short version:**
Quietly fed-up with tools that don't work. Confident without performing. The cheek lives in the structure (it's a long form because the short ones fail), not in the surface copy. Sister product to *Actually Useful* (separate project, same maker, same voice — both refuse the "this is fine" version of things and rebuild them properly).

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

**How editing is handled — see Wording Edit Scaffolding section below.**

**Q42 (safety question) — special treatment:**
The Always-lock and trigger logic on Q42 are hard-coded and cannot be changed by the user. The trigger logic fires based on the response option selected, not on the question text — so it holds regardless of how the wording is edited. The UI makes this explicit: the user is told that the purpose and behaviour of this question are fixed. Any wording edits should preserve the seriousness of the question — it must remain a genuine safety question, in language that fits the user better. The scaffolding for Q42 reflects this: edits are framed as being in service of that same purpose, not as customisation for comfort.

### Wording Edit Scaffolding

**Trigger:** "Edit wording" link on the question screen. Quiet, understated. Appears below the plain-language description, above the frequency toggle.

**Behaviour:** Expands inline — no modal, no new screen. Frequency toggle collapses and hides while editing is open; restores on save or cancel.

**What opens:**
- Question text field (pre-populated with current wording — standard or previously edited)
- Plain-language description field (pre-populated with current wording)
- Examples block, between the two fields:

*Examples of edits that work:*
- "How did your sleep go?" → "Did I actually sleep, or just lie there?"
- "How is your energy right now?" → "How wrecked do I feel right now?"

*Examples that change the meaning too much:*
- "How is your energy right now?" → "Did I exercise today?" *(this is a different question)*

- Save / Cancel buttons

**On save:** Fields close, frequency toggle restores. New wording renders in place. A line appears briefly then fades: *"Saved — you can revert this any time in settings."*

**On cancel:** Fields close, frequency toggle restores. No changes. No confirmation needed.

**Revert:** Per-question, in settings, any time. Reverts to original standard wording (not to a previous edit).

**Q42 special treatment — same mechanic, different examples block:**

*Examples of edits that work:*
- "Are you having thoughts about not being here anymore..." → "Are you having thoughts that it would be easier to disappear?"

*Examples that change the meaning too much:*
- Changing it to something that no longer asks about these kinds of thoughts

Locked note below the examples (not editable, visually quieter): *"The way this question works in the background can't be changed. It responds to which answer you choose, not the specific words."*

Save / Cancel / revert work identically to every other question.

### Low Capacity Mode

A temporary short-form the user can trigger on bad days. Does not change frequency settings — those stay locked.

**Trigger:** Prominent option on the check-in start screen. Label TBD. Not buried — available without effort.

**Default question set for Low Capacity Mode:**
Q3 (sleep quality), Q4 (fatigue vs sleepiness), Q5 (pain), Q10 (energy), Q18 (basic self-care), Q20 (time blindness), Q40 (current capacity), Q42 (safety — always included, cannot be removed).

**Customisation:**
- Users can add or remove questions from the Low Capacity Mode set at any time in settings
- Suggested cap: 8 questions. Hard cap: 10 questions. Q42 does not count toward the cap.
- Cap is communicated as a suggestion, not a rule — the hard cap exists to prevent the mode from becoming full-length by accident

**Setup timing:** Low Capacity Mode setup is prompted after the first check-in is complete — not during onboarding. Rationale: users need to have experienced the full check-in before they can make meaningful decisions about what to keep for low capacity days.

### Custom Question Builder

**Where it lives:** End of onboarding question walkthrough (before onboarding completes) + settings any time after onboarding.

**Onboarding introduction:** Brief prompt after last standard question: *"You can add your own questions to track things the standard set doesn't cover — a specific symptom, a pattern you've noticed, anything you want to keep an eye on. They'll appear at the end of every check-in and chart over time alongside the rest."* Two buttons: **Add a question** / **Skip for now**

**Builder — inline form with four fields:**
1. **Question text** — text field, required. Placeholder: *"What do you want to track?"*
2. **Clarifying note** — text field, optional. Placeholder: *"A bit more context for yourself, if useful."*
3. **Response type** — select one: Frequency scale *(Never → Near constant)* / Yes–Sometimes–No / Free text
4. **Frequency** — three-button toggle: Always (default) / Occasional / Off. Hint line: *"Everything starts on Always. You can change this any time in settings."*

Save / Cancel buttons.

**On save:** Question added. Form resets. Two options appear: **Add another** / **Done**

**On cancel:** Form closes. No changes.

**Managing custom questions in settings:**
- Listed with their response type and current frequency setting
- Each has: Edit / Change frequency / Delete
- Delete requires a confirmation step: *"Remove this question? Your past responses will be kept."*
- No limit on number of custom questions

**Charting:** Custom questions chart over time in History alongside standard questions.

**Note:** The existing nd-checkin.html custom question builder was flagged as a potentially salvageable UI pattern. The builder is now designed from scratch; review the existing file before build for any useful UI details, but it is no longer the reference point.

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

**Q42 deeper exploration feature — locked:**

**Heading:** Say more

**Entry:** Two ways in — visible on the trigger response screen (scroll down, it's there), and an explicit "Say more" button that opens a dedicated screen. Same content either way.

**Inside the feature:**
- 4 tappable prompt chips, first person, all optional
- Tapping a prompt anchors it in the open text space; cursor lands after it
- Multiple prompts can be combined, or ignored entirely — user can write freely without using any
- Single open text space accumulates everything

**The four prompts:**
1. *What's happening in my body right now*
2. *What brought this up today*
3. *Something I want to remember about this*
4. *Something I'd want to say to someone*

**Storage:** Separate record from the notes field on the trigger response screen. Viewable alongside notes in history. No decision required from the user in the moment.

**Exit options:** Save / Save draft (come back later) / Discard (confirmation prompt if anything has been typed)

**Tier note:** The structured prompt version above works for all three tiers. An AI-enhanced conversational version for cloud-tier users is a future consideration — not in scope for current design phase.

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
> *[Resource layer — see below]*
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

### Q42 Resource Layer — Fully Locked

**Trusted person nudge:** No name is captured during onboarding. The trigger screen does not name a specific person. If a nudge appears at all, it is generic: *"Is there someone you trust you could reach out to today?"* This may be cut entirely after tester feedback. "People in my corner" is on the ideas list for a later feature — not in scope now.

Rationale: the ND population skews toward isolation, late-diagnosed people who've lost relationships, people whose support networks don't understand them. Assuming a trusted person exists could sting at exactly the wrong moment.

**Resource list:**

1. **NAMI HelpLine** — peer support, staffed by people with lived experience. Call 1-800-950-6264 or text "NAMI" to 62640. M–F, 10am–10pm ET.
2. **Crisis Text Line** — free, confidential, 24/7. Text HOME to 741741.
3. **warmline.org** — national directory of peer warmlines. Links to state-specific lines. No script — note that hours and coverage vary by state.
4. **988 Lifeline** — call or text 988, or chat at chat.988lifeline.org. 24/7. Positioned as escalation option, not first offer. Moves to top for most serious response option.

**Chat link encoding:** Not possible for warmline or 988 chat services — these use custom-built tools that don't accept URL parameters for pre-populating messages. For SMS/text options, tap-to-text links with pre-filled keywords are supported (e.g. `sms:741741?body=HOME`).

**Resource card format — per resource (NAMI and Crisis Text Line):**

Each card includes:
- Name and one-line description
- Contact method (call/text number or text keyword)
- Hours
- What to expect before you connect (phone tree note for NAMI call; automated confirmation note for Crisis Text Line)
- Script picker (collapsed by default, revealed on tap)

**NAMI HelpLine card — prep text:**

*If you call:* You'll hear a short automated menu first — choose your language, then stay on the line. Someone will pick up and introduce themselves, then ask how they can help.

*If you text:* Send "NAMI" to 62640 to connect. A specialist will respond directly.

**Crisis Text Line card — prep text:**

*What happens:* You'll get an automated confirmation, then a counselor joins. They'll open the conversation.

**Script picker — spec:**

Trigger label: *"What to say when they ask how they can help"* (NAMI) / *"What to say when they check in"* (Crisis Text Line)

Tapping expands the picker. Inside:
- 4 pre-written options, selectable by tap. Selected option highlights and stays visible for reference during the call or text.
- 5th option: *"Write your own"* — tapping opens a small inline text field. User types what they want to say. Stays visible once written, for reference.
- When the user has typed something and goes to close/navigate away: *"Save this for next time, or just keep it for now?"* → **Save** / **Just for now**
  - "Just for now" = session-only, clears on exit
  - "Save" = persists, pre-populates the field next time the picker is opened
- User can edit or clear saved text any time the picker is open

**NAMI HelpLine scripts** (spoken or sent after "How may I help you?"):
1. *"I'm having a hard time and I'm not sure I'm okay. I just needed to talk to someone."*
2. *"Something came up today and it's sitting heavy. I don't really know where to start."*
3. *"I've been struggling. I'm not in crisis, but I'm not doing well either."*
4. *"I'm having a hard day and I could use some support."*

**Crisis Text Line scripts** (sent when the counselor checks in):
1. *"I'm having a hard time and I'm not sure I'm okay."*
2. *"Something came up today and it's sitting heavy."*
3. *"I've been struggling. Not in crisis, but not okay either."*
4. *"I'm having a hard day and I needed somewhere to put it."*

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

**Salvageable language from existing nd-checkin.html — carry into build:**
- Anhedonia plain-language description: *"Not bored — more like you look at something you love and feel nothing."* Keep exactly.
- Special interests response options (functional scale, not frequency): *"They still light me up / Sometimes but I can still get into them / It takes huge effort to start / Even my favourites feel hollow"*
- Freeze response description: *"Freeze response looks like procrastination but is driven by overwhelm or fear."* Keep exactly.
- Masking/gap question framing: *"The gap between how you seem and how you are."* Keep.
- Future-feeling plain-language description: *"Not pessimism — more like the future doesn't feel real or reachable right now."* Keep exactly.
- Self-concept parenthetical: *"Not your skills or output — just you, existing in the world."* Keep.
- Q43 notes prompt examples: *"Like wading through mud", "Everything is muffled", "Watching my life through a window"* — already in v2, confirmed good.
- Sensory tolerance description: *"Sensory thresholds often drop when we're struggling mentally."* Keep.
- Custom question builder UI: reference during build for inline edit and remove/confirm patterns.
- "Edit this question" link placement: reference during build.

### Clinician Export

**Format:** Two options, user chooses at export time:
- **Download PDF** — printable, for bringing to an appointment
- **Generate shareable link** — read-only view for sending to a clinician directly

**Date range:** User sets manually every time. No assumed default.

**Shareable link expiry:** User chooses at generation time — expires after a set period, or stays live until revoked. Revocation available any time in settings.

**Export header (top of document/view):**
- Date range covered
- Number of check-ins completed in that period
- User's name — optional; user decides whether to include
- Diagnosis/exploration areas — only if user has explicitly permitted this per export
- **Q45 clinician note — displayed prominently, before all section data**

**Body — organised by section:**
- Per-response clinical translations for flagged or significant items — user's wording shown as-is, clinical reframe alongside it
- Section summary interpretation for the rest
- User's own language is always shown — never replaced by clinical language, only accompanied by it
- Clinical translations are neutral and descriptive, not interpretive beyond what the data supports

**Flagging:**
Items flagged in the export:
1. A response significantly worse than the user's personal baseline
2. A gradual downward trend across multiple check-ins
3. Any non-first-option response on Q42
4. A question skipped repeatedly
5. A significant change in either direction — sudden improvement flagged as well as decline

Flags appear inline where they occur and are also collected in a **Flags Summary** block immediately after the header, before the section data.

### Testing Companion — `no-really-testing.html`

*Built Session 15. Separate file from `nd-checkin.html`. Lives alongside it in the repo.*

**Purpose:** A standalone testing environment that walks testers through the same question set as the real check-in, while capturing structured feedback about each question and the experience overall. Solves the problem of earlier testing rounds where testers' thoughtful comments never reached Melissa.

**How it differs from the real check-in:**
- Intro screen explicitly names the tool as a testing version, acknowledges the heavier ask (answering + giving feedback), names the future short-form Low Capacity Mode so testers understand the long form is intentional
- Per-question feedback affordance — *"Thoughts on this question?"* button expands an inline panel with four pre-written prompt chips (*Wording felt off / Something missing / Response options didn't fit / This landed well*) plus an open text field
- End-of-check-in wrap-up screen with five open-ended prompts covering what stuck, what was missing, what didn't fit, pacing, and anything else
- Pause-for-now button on every screen with two confirmation flows depending on the tester's save-mode choice
- Personal answers default to *not saved* — opposite of the real tool; the testing tool is single-session unless the tester opts in
- No Q42 full flow (placeholder card only — feedback can be left on it, but the trigger response / resource layer / Say More are not built into the testing companion; that's a dedicated future session)
- No onboarding, no custom questions, no Low Capacity Mode

**Feedback channel:** Google Forms.
- Form: *No Really — Tester Feedback*, owned by `noreally.howareyou@gmail.com`
- Responses auto-populate a Google Sheet for sorting/filtering across testers and questions
- Each submission carries: timestamp, optional tester handle, feedback type (`per_question` or `wrap_up`), question ID, question wording as shown (captures wording at time of feedback), prompts tapped, feedback text, wrap-up responses
- Submitted via `fetch` POST with `mode: 'no-cors'`
- Personal answers never transmitted — feedback channel and personal data channel are structurally separate

**Tester identity:** Optional handle, captured once on the intro screen and attached to all subsequent submissions from that browser. No email required. Lets Melissa spot patterns across one tester's feedback without forcing identification.

**Save-mode behaviour:**
- Default: *Don't save anything — testing only.* Closing the tab clears all answers and progress. Feedback already submitted is unaffected (it lives in the Google Sheet).
- Opt-in: *Save my answers and progress locally so I can pause and resume.* Returning to the URL on the same browser triggers a resume screen.

**Question source:** Duplicated inside the testing companion file at session 15. The two files (`nd-checkin.html` and `no-really-testing.html`) currently maintain question wording independently. A future refactor may move questions to a shared `questions.json` for single-source-of-truth editing — not in scope yet.

**Critical feedback from first testing session (Melissa, Session 15) — to address Session 16:**
1. **Notes vs Thoughts confusion** — the per-question Notes field (for the tester's own use) and the "Thoughts on this question?" panel (for feedback to Melissa) are not clearly distinguished. Testers may put feedback into Notes where it never reaches Melissa.
2. **Pause-and-return** — pause screen tells the tester they can close the tab but does not tell them how to come back. Refreshing the page works but is not surfaced. Add an explicit "Resume now" button and clearer return instructions.
3. **Frequency scale visual** — the 8-block selector has blocks too large, and the "Never / Near constant" labels plus selected-value text are barely legible against the dark background. Affects every frequency question (9 of 45). Visual fix needed.
4. **Q42 placeholder is too coy** — current placeholder text is vague about what the question is. Testers familiar with PHQ-9 will recognise the safety question; being indirect violates the tool's voice. Replace with honest gist text until the full Q42 build is done.
5. **Grey text legibility throughout** — *accessibility issue, not a design preference.* `--text-dim` and `--text-dimmer` are well below WCAG AA against the dark background. This actively excludes users with visual processing differences and screen-fatigue issues — the very people the tool is for. Bump contrast on both throughout the file. Day-mode toggle deferred to v2; the urgent fix is legibility on the existing dark theme.
6. **Notes persistence + viewability** — Notes are promised to "stay on your device" but there is no UI to view, edit, or confirm them after the fact. Worse: for testers in "don't save" mode, Notes don't persist at all, contradicting the promise. Decision: always persist Notes regardless of save-mode (Notes are a structural promise, not a mode-dependent feature), and add a "View my saved notes" screen accessible from the intro and from the thank-you screen.
7. **Q39 "unexplained" wording** — for many ND and chronically ill people, the mind-body connection is not unexplained; it's well-known and predictable. Reword without "unexplained."
8. **Audit and remove "ND" / audience-naming throughout** — see voice/framing principle and abbreviation rule above. Affects: plain-language clarifications, section names ("ND-Specific Experience" renames to something descriptive — *"Stimming, Focus & Special Interests"* is a candidate), section intro text, intro screen positioning. This is content work; expected to take dedicated focus.

**Parked for dedicated session:**
- Q7 pain question redesign — the question asks for a *range* across the day but the response options are scalar. Restructure (sliders, multi-select, paired low-high, or break into separate questions). Also: add gastrointestinal symptoms somewhere appropriate.

**Parked for v2 / polish pass:**
- Day-mode / night-mode toggle (separate from the urgent legibility fix on the dark theme)
- Q2 hours-of-sleep input ergonomics (current half-hour increments are tedious; chips or a sensible default would help)
- Q29 examples of what shutdown and meltdown look like for highly-masking people


### Still Open

- **Q42 trigger response copy** — working draft in place as placeholder; expected to iterate substantially after real tester feedback
- **"Walk me through" option labels** — structure decided (section by section / all in one flow); exact wording deferred to build
- Flagging logic implementation detail — how the tool calculates baseline and detects trends (to be resolved during build)

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

* GitHub repo: tibbalsgribbin/external-prefrontal-cortex
* Project documents (BRIEF, ROADMAP, CHANGELOG, INSTRUCTIONS) committed to repo
* GitHub Pages: index.html ready but Pages not yet enabled
* **Design phase complete.** Question set v2 complete; all UI designed and locked; Q42 fully designed end-to-end including trigger response, resource layer, deeper exploration feature
* **Build phase active.** First check-in build shipped Session 14 (`nd-checkin.html`). Testing companion shipped Session 15 (`no-really-testing.html`).
* **Check-in tool named: No Really. How *Are* You?** (short form: No Really). Locked Session 15.
* **Testing pipeline live.** Google Form *No Really — Tester Feedback* receives submissions from `no-really-testing.html`; auto-populates a Google Sheet for analysis. Form owned by `noreally.howareyou@gmail.com`.
* **First tester pass complete** — Melissa walked through all questions in `no-really-testing.html` and confirmed end-to-end submission pipeline working. Generated eight 🔴 critical fixes and a parked list (see Testing Companion section).
* `q42-onboarding-page-draft.md` exists in repo — working draft, approved
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
