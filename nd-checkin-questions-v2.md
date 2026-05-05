# ND Wellness Check-In — Full Question Set v2

*This document is the complete question set for the nd-checkin tool. It is a design reference — not a build spec. Every question listed here has a notes field (always visible). Response types and plain-language descriptions are included for every question.*

*Last updated: 2026-05-05 — Session 4*

---

## Format Rules (Apply Everywhere)

- One question at a time — never a wall of text
- Every question has a notes field, always visible (not hidden behind a toggle)
- Notes fields have a prompt specific to the question where useful
- Mixed response types throughout: frequency scale, functional scale, select-one, multi-select — chosen per question based on what fits
- Somatic and behavioural anchors offered alongside emotional language throughout
- Frequency settings (Always / Occasional / Off) are set by the user during onboarding and locked in for tracking consistency — everything defaults to Always

---

## Frequency Scale (used throughout)

> Never → Rarely → Sometimes → Noticeably → Often → Most days → Almost always → Near constant

---

## Section 1 — Sleep & Rest

### Q1 — Sleep pattern last night

*How did your sleep go?*

Response: select one

- One block — mostly uninterrupted
- Broken — woke up during the night but got back to sleep
- Very broken — woke multiple times, hard to get back to sleep
- Split sleep — awake for a significant period in the middle, then slept again
- Mostly didn't sleep
- Long sleep / hard to wake up
- Napped instead of or in addition to overnight sleep

Plain-language note: *Waking up briefly and falling back to sleep counts as one block for most people. If you were awake long enough that it felt like two separate sleeps, that's split sleep.*

---

### Q2 — Sleep duration

*Roughly how many hours did you sleep in total?*

Response: number input (hours, allows decimals)

Plain-language note: *Count all sleep including naps. If you're not sure, a rough estimate is fine.*

---

### Q3 — Sleep quality

*How rested do you feel after last night's sleep?*

Response: select one

- Rested — sleep did its job
- Okay — not great but functional
- Unrestored — I slept but it didn't help
- Exhausted — worse than before I went to sleep

Plain-language note: *This is about how you feel now, not how long you slept. Long sleep that leaves you exhausted counts as unrestored.*

---

### Q4 — Fatigue vs. sleepiness

*Right now, are you feeling sleepy, fatigued, or both?*

Response: select one

- Neither — I feel reasonably alert
- Sleepy — I could fall asleep, I want to sleep
- Fatigued — I don't feel sleepy but my body or mind feels heavy and depleted
- Both — sleepy and fatigued at the same time

Plain-language note: *Sleepiness is wanting to sleep. Fatigue is depletion that rest doesn't always fix. They can look similar from the outside but feel different from the inside.*

---

## Section 2 — Energy & Physical Capacity

### Q5 — Overall energy

*How is your energy right now, compared to what's typical for you?*

Response: select one

- About my usual level
- Lower — I'm managing but it's an effort
- Quite depleted — basic things feel heavy
- Running on empty — even resting isn't recharging me

Plain-language note: *Compare to your own normal, not to what you think you should have.*

---

### Q6 — Physical capacity

*What does your body feel able to do today?*

Response: select one

- Moving around feels normal for me
- I can do what I need to but it costs more than usual
- Physical tasks feel hard — I'm conserving energy
- Very limited — basic movement is an effort

---

### Q7 — Pain today

*What has your pain been like today so far?*

Response: two-part

Part 1 — Range across the day:
- No pain / not relevant for me
- Mild — noticeable but not limiting
- Moderate — affecting what I can do
- Significant — hard to think around
- Severe — very difficult to function

Part 2 (if any pain selected) — Type and location (free text, optional):
*Where is it, and what does it feel like? (e.g. 'lower back, dull and constant', 'joints, worse when moving', 'head, pressure')*

Plain-language note: *This captures range, not a single snapshot. If your pain has varied, describe the range.*

---

## Section 3 — Mood & Emotional Experience

### Q8 — Emotional colour

*Does the world feel flat, grey, or like there's a glass wall between you and everything?*

Response: frequency scale

Plain-language note: *Some people don't feel 'sad' — things just lose colour or meaning. This is asking about that.*

---

### Q9 — Anhedonia (framed through special interests)

*Have your special interests or things that used to give you energy stopped doing that?*

Response: select one

- They still light me up
- Sometimes, but I can still get into them
- It takes huge effort to start
- Even my favourites feel hollow

Plain-language note: *Not bored — more like you look at something you love and feel nothing.*

---

### Q10 — Irritability

*Have you been more irritable, snappy, or faster to reach your limit with people or noise?*

Response: frequency scale

Plain-language note: *For many ND people, depression and anxiety show up as irritability first — before sadness.*

---

### Q11 — Hopelessness

*How much have you been experiencing a sense of hopelessness?*

Response: frequency scale

Plain-language note: *This might feel like things won't get better, that there's no point, or that you can't see a way forward. It can also show up as going through the motions without expecting anything to change.*

*Hopelessness can mean different things — it might be about your own life or situation, or it might be a reasonable response to what's happening in the world right now. Both count here. You'll have space to say more below.*

Notes field prompt: *If it's useful, say more about what the hopelessness feels connected to — your own situation, the state of the world, or something else entirely.*

**Clinician view note:** User's own elaboration in the notes field is displayed in full. Where the user indicates hopelessness connected primarily to external/world events, this is flagged as contextual rather than purely symptomatic.

---

### Q12 — Burden / broken feeling

*Are you carrying a heavy sense that you are the problem — not just that you did something wrong?*

Response: frequency scale

Plain-language note: *Feeling fundamentally broken or like a burden to others. This is different from ordinary guilt about a specific thing.*

---

### Q13 — How you feel about yourself as a person

*How do you feel about yourself as a person right now?*

Response: select one

- Mostly okay with who I am
- A bit down on myself, but not crushed
- Pretty bad — I'm being cruel to myself
- I feel fundamentally wrong or broken

Plain-language note: *Not your skills or output — just you, existing in the world.*

---

### Q14 — Future feeling

*When you imagine the future, does it feel blank, pointless, or like something you can't picture yourself in?*

Response: select one

- I can imagine a future — it feels okay-ish
- It's hazy but I can still picture something
- It feels mostly blank or pointless
- I can't really picture a future for myself right now

Plain-language note: *Not pessimism — more like the future doesn't feel real or reachable right now.*

---

### Subsection: Sense of Reality and Self

*These questions are about experiences that can be hard to describe. They're more common than most people realise, especially for ND people and people with chronic illness or pain. There are no wrong answers here.*

---

### Q15 — Derealization

*Have you had moments where the world around you felt unreal, distant, or like you were watching it through glass?*

Response: frequency scale

Plain-language note: *Things might look flat, washed out, or unfamiliar. Familiar places might feel strange. It can feel like being in a dream while awake, or like there's a barrier between you and everything else.*

---

### Q16 — Depersonalization

*Have you had moments where you felt disconnected from yourself — your body, your thoughts, or your sense of who you are?*

Response: frequency scale

Plain-language note: *This might feel like watching yourself from the outside, like your hands don't quite feel like yours, or like your thoughts are happening at a distance. Some people describe it as feeling like a passenger in their own body.*

---

### Q17 — Response to derealization/depersonalization experience

*When these experiences happened, how did you feel about them?*

Response: select one

- I noticed it but it didn't bother me much
- It was uncomfortable or disorienting
- It was distressing
- It varies — sometimes fine, sometimes not
- I'm not sure / hard to say
- I haven't had these experiences

---

## Section 4 — Cognitive & Executive Function

### Q18 — Concentration

*How hard is it to hold focus on something today?*

Response: select one

- About normal for me
- Harder than usual — I'm losing the thread more
- Quite difficult — focus keeps slipping
- Very hard — I can't stay with anything

---

### Q19 — Decision-making / initiation

*Are you finding it hard to start things or make decisions — even small ones?*

Response: frequency scale

Plain-language note: *This includes small decisions like what to eat, what to do next, or which message to reply to first.*

---

### Q20 — Freeze response

*Do you freeze on tasks, decisions, or messages — not because you don't care, but because you can't start?*

Response: select one

- Not really — I can usually start things
- Sometimes, especially for high-stakes stuff
- Often — I have a backlog of things I'm frozen on
- Almost daily — freezing is my default right now

Plain-language note: *Freeze response looks like procrastination from the outside but is driven by overwhelm or fear, not laziness or not caring.*

---

### Q21 — Time-loss: hyperfocus

*Have you lost track of time because you were absorbed in something — hyperfocus, a flow state, or a special interest?*

Response: frequency scale

Plain-language note: *This is when time disappears because you were deeply into something. You might have felt engaged or even good during it — you just didn't notice hours passing.*

---

### Q22 — Time-loss: fog

*Have you lost track of time in a way that felt more like fog, confusion, or just... gaps?*

Response: frequency scale

Plain-language note: *This is different from being absorbed in something. It might feel like time slipped by without you in it — you're not sure what you were doing, or the day just disappeared without a clear reason.*

---

### Q23 — Working memory

*Are you losing track of what you were doing, or forgetting things mid-task more than usual?*

Response: frequency scale

Plain-language note: *Walking into a room and not knowing why. Losing a sentence mid-thought. Forgetting you were doing something.*

---

## Section 5 — Sensory Experience

### Q24 — Sensory tolerance

*Is your sensory tolerance lower than usual? (Sounds, textures, light, smells, or crowds feeling harder than your normal?)*

Response: frequency scale

Plain-language note: *Sensory thresholds often drop when we're struggling mentally or physically. Compare to your own baseline, not to what others seem to tolerate.*

---

### Q25 — Sensory seeking

*Are you finding yourself seeking out particular sensations more than usual? (Specific textures, sounds, movement, pressure, temperature)*

Response: frequency scale

Plain-language note: *This might be comforting, regulating, or just noticeable — not necessarily a problem.*

---

## Section 6 — ND-Specific Experience

*Each item in this section has two parts: how much it's happening, and whether it's just something you're observing or whether it's causing distress or interfering.*

---

### Q26 — Stimming

*Have you been stimming more than usual, or noticing stimming you don't usually do?*

Response part 1: frequency scale

Response part 2: select one
- Just noticing it — it's data
- It's been helpful or regulating
- It's caused me some distress or got in the way

---

### Q27 — Hyperfocus

*Have you been going into hyperfocus — getting locked into something to the exclusion of other things?*

Response part 1: frequency scale

Response part 2: select one
- Just noticing it — it's data
- It felt good or productive
- It caused me distress or interfered with things I needed to do

---

### Q28 — Special interests

*How have your special interests been — are they accessible and engaging?*

Response part 1: select one
- Engaging as usual
- Variable — sometimes yes, sometimes no
- Hard to access right now
- Completely flat — no pull at all

Response part 2: select one
- Just noticing it — it's data
- It's been a source of comfort or energy
- The change has caused me distress

---

### Q29 — Shutdown / meltdown

*Have you had a shutdown or meltdown, or come close to one?*

Response part 1: select one
- No
- Came close but didn't tip over
- Had a shutdown (withdrawal, going quiet, going offline)
- Had a meltdown (losing control of emotional or physical responses)
- Both

Response part 2 (if anything other than No): select one
- It passed and I'm okay
- I'm still recovering
- It caused me significant distress
- It affected my relationships or commitments

---

## Section 7 — Social & Communication

### Q30 — Social energy

*How is social interaction feeling right now — the idea of it, or actually doing it?*

Response: select one

- About normal for me
- More effortful than usual but manageable
- Quite draining — I'm choosing carefully
- Very hard — I'm avoiding most interaction

---

### Q31 — Communication by type

*Which types of communication have felt manageable vs. difficult recently?*

Response: multi-select grid

Types: Text / messaging | Email | Phone calls | Video calls | In-person 1:1 | In-person group

For each: Manageable | Difficult | Avoided entirely | Not applicable

---

### Q32 — Withdrawal

*Are you withdrawing from people, conversations, or things you'd normally be part of?*

Response: select one

- About my normal social level
- A bit more withdrawn than usual
- Noticeably pulling back — avoiding quite a bit
- Almost completely withdrawn

Plain-language note: *Ghosting messages, cancelling plans, or not reaching out when you usually would.*

---

### Q33 — Masking gap

*How much effort is it to 'hold it together' in public — and how hard is the crash afterwards?*

Response: select one

- Not much of a gap right now
- Masking more than usual — crashes manageable
- Big gap — I seem okay but I'm not, crashes are hard
- The masking is constant and crashes wipe me out

Plain-language note: *Performing okay-ness when you're not. The gap between how you seem and how you are.*

---

## Section 8 — Work & Regular Commitments

*This section is conditional — shown only if the user indicated during onboarding that they have work, study, or regular commitments.*

---

### Q34 — Commitments met

*Were you able to meet your commitments (work, study, regular responsibilities) this period?*

Response: select one

- Yes — I did what I needed to do
- Mostly — some things slipped but I managed the important stuff
- Partially — I'm behind or missed things
- No — I wasn't able to meet my commitments

---

### Q35 — Cost of meeting commitments

*What did it cost you to meet (or attempt) your commitments?*

Response: select one

- About normal — I managed without significant extra cost
- More than it should — I pushed through but it took something
- A lot — I paid for it physically, mentally, or emotionally
- Everything — meeting commitments used up all my capacity

---

### Q36 — What got in the way

*What got in the way of your commitments, if anything?*

Response: multi-select

- Energy or fatigue
- Pain or physical symptoms
- Cognitive fog or concentration
- Emotional state
- Sensory environment
- Executive function / initiation
- External circumstances
- Nothing got in the way
- Other (notes field)

---

### Q37 — Sustainability

*Does your current load feel sustainable?*

Response: select one

- Yes — this feels manageable
- Just about — I'm coping but there's no margin
- No — this isn't sustainable, something needs to change
- I'm already in crisis mode

---

## Section 9 — Daily Function & Self-Care

### Q38 — Basic self-care

*Are basic self-care tasks (eating, hygiene, leaving the house) getting harder to do?*

Response: select one

- Mostly managing them
- Some are slipping, but I'm getting by
- A lot are slipping — I'm skipping things I need
- Very difficult — barely managing basics

Plain-language note: *Not laziness — the brain sometimes can't sequence or initiate even when you want it to.*

---

### Q39 — Unexplained physical symptoms

*Are you having unexplained physical symptoms — headaches, nausea, gut issues, muscle tension, or feeling heavy?*

Response: frequency scale

Plain-language note: *Anxiety and depression often live in the body first, especially for ND people. These symptoms are real even when there's no clear physical cause.*

---

## Section 10 — Capacity & Crash Risk

### Q40 — Current capacity

*Right now, how much capacity do you have left today?*

Response: select one

- Plenty — I have room to do more
- Some — I can handle things but I'm not full
- Running low — I need to conserve
- At or past my limit — I need to stop

---

### Q41 — Crash risk

*Based on how today has gone, how worried are you about crashing (PEM, burnout spike, shutdown) in the next day or two?*

Response: select one

- Not worried — I'm within my envelope
- A little — I pushed it but probably okay
- Quite worried — I may have overdone it
- Already crashing or crashed

Plain-language note: *This is about your sense of where you are relative to your own limits — not a clinical assessment.*

---

## Section 11 — Safety

### Q42 — Safety question

*Are you having thoughts that the world would be easier without you, or that you don't deserve to take up space?*

Response: select one

- No — not having thoughts like that
- Occasionally, but they pass
- More often — these thoughts come up regularly
- Yes — these thoughts are frequent or strong

Plain-language note: *You don't need 'classic' suicidal thoughts for this to matter. Passive thoughts count too.*

**Tier: Always. Cannot be removed or moved to Complete only.**

**Trigger logic:** Any response other than the first option triggers a gentle in-app acknowledgement, opens the notes field with a specific prompt, and offers a safety resource. Does not redirect away from the check-in unless the user chooses.

---

## Section 12 — Free-Form Entries

### Q43 — What the questions didn't capture

*Is there a way you'd describe how you've been feeling that the questions above didn't capture?*

Response: free text

Notes prompt: *Metaphors, images, textures — anything that feels true. e.g. 'Like wading through mud', 'Everything is muffled', 'Watching my life through a window'*

---

### Q44 — Recent context

*Has anything happened recently that you think is connected to how you've been feeling?*

Response: free text

Notes prompt: *Big things or small things — a build-up of small things often matters most. Optional — share as much or as little as you want.*

---

### Q45 — For your clinician

*Is there anything you want your clinician to know that you find hard to say out loud?*

Response: free text

Notes prompt: *This goes directly into the clinician summary.*

**Clinician view:** Displayed prominently, at the top of the clinician export, ahead of section-by-section data.

---

## Section 13 — Custom Questions

User-defined questions. Added during onboarding or any time via settings.

Each custom question has:
- The question text (written by the user)
- An optional clarifying note (written by the user)
- Response type chosen by the user: frequency scale / Yes–Sometimes–No / free text
- Frequency setting (Always / Occasional / Off) — defaults to Always

Custom questions appear as their own section at the end of every check-in. They chart over time in History alongside standard questions.

**UI note:** The custom question builder from the existing nd-checkin.html is flagged as a salvageable element — review before build.

---

## Frequency Settings

All questions default to **Always** — the tool does not pre-decide what is worth tracking. During onboarding, users demote or remove questions that aren't relevant to them.

Available settings:
- **Always** — appears in every check-in
- **Occasional** — appears at a user-set frequency (weekly, monthly, or custom)
- **Off** — hidden unless restored in settings

Structural exceptions:
- **Q42 Safety** — Always, locked, cannot be demoted or removed
- **Section 8 Work & Commitments (Q34–Q37)** — conditional on onboarding; only shown if user has work/study/regular commitments
- **Q17 Response to derealization/depersonalization** — follows Q15+Q16; if those are removed, Q17 goes with them

**Low Capacity Mode** — a temporary short-form the user can trigger on bad days. Shows a small fixed set of high-signal questions plus Q42. Does not change frequency settings. Content and trigger design TBD in onboarding design session.

---

## Clinician Export Notes

- Organised by section
- Clinical translations sit alongside user's own language throughout
- Q45 (clinician note) displayed prominently at the top
- Flagging logic: tool flags significant changes and gradual trends over time (flagging logic TBD)
- Diagnosis/exploration areas shared only with explicit user permission per export
- World-events hopelessness (Q11) flagged as contextual where indicated by user's notes

---

## Still Open

- Tweaking scope — what users can adjust before frequency settings lock in (separate design conversation)
- Low capacity mode — content, trigger, and customisation (onboarding design session)
- Onboarding flow design
- Clinician view / export design
- Flagging logic for changes over time
- Detailed review of existing nd-checkin.html before build (salvageable elements: anhedonia framing, masking gap question, freeze response framing, future-feeling question, self-concept question, custom question builder UI)
