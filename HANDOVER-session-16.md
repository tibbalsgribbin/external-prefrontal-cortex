# Handover Prompt — Session 16

## Where we are

Session 15 (2026-05-13) locked the check-in's public name, built the testing companion, set up the feedback pipeline, and got Melissa's first walkthrough done. The pipeline works end-to-end.

The name: **No Really. How *Are* You?** (short form: *No Really*). Italics on *Are*. Tagline: *"A long-form mental health check-in for people who don't see themselves in the short forms."*

## What this session is for

**Critical fixes to `no-really-testing.html` before it goes to a wider tester group.** Eight items, all surfaced by Melissa's first walkthrough. The tool is not ready for more testers until these are done — if we send it as-is, the next round will rediscover the same problems and the real feedback gets buried.

## The eight critical fixes (in suggested order)

The first item is *probably* a good place to start because it shapes subsequent decisions. The order below is a suggestion, not a rule — Melissa decides.

1. **Audit and remove "ND" / audience-naming throughout** — affects question copy, section names (especially "ND-Specific Experience" → e.g. "Stimming, Focus & Special Interests"), section intros, the tagline. The check-in describes experiences precisely; the audience self-identifies by recognition. This is content work that benefits from fresh attention. Doing it first means later fixes don't have to retrofit.
2. **Notes vs Thoughts confusion** — clearer labels, inline explanations. Tester feedback was lost to the wrong field during Melissa's first walkthrough. High priority.
3. **Notes persistence + "View my saved notes" screen** — Notes always persist regardless of save-mode; add a viewing screen.
4. **Grey text legibility throughout** — accessibility issue, not preference. Bump `--text-dim` and `--text-dimmer` to meet WCAG AA on the dark background.
5. **Frequency scale visual** — smaller blocks, brighter labels, legible selected-value text. Affects every frequency question.
6. **Pause-and-return** — explicit "Resume now" affordance; clearer return instructions.
7. **Q42 placeholder honesty** — replace coy text with the gist of what the question is. The full Q42 build is still its own dedicated session.
8. **Q39 "unexplained" wording** — rewrite without "unexplained."

## What to read before starting

- **BRIEF.md → "Testing Companion" section** — covers what the companion is, how it works, what's in scope vs out of scope, and the eight critical fixes in detail
- **BRIEF.md → "No Really. How Are You? — Design Detail" section** — covers the locked name, voice/framing principle, abbreviation rule
- **CHANGELOG.md → Session 15 entry** — full context on what was built and decided
- **`no-really-testing.html`** — the file being edited

## Parked (don't pick these up unless we agree)

- Q7 pain question redesign — its own session
- Day-mode/night-mode toggle — v2 polish
- Q2 hours-of-sleep input — v2 polish
- Q29 examples for highly-masking shutdowns — v2 content
- Refactoring questions to shared `questions.json` — v2 architecture

## Process notes

- Session start: read this prompt, then ask Melissa if anything has come up since last time, then confirm the plan before touching files
- Melissa decides scope; she may want to do all eight or just a subset depending on capacity
- All file edits delivered to outputs as before; Melissa replaces the file in her project folder and pushes via GitHub Desktop at session end
- Full wrap at session end every time (BRIEF, ROADMAP, CHANGELOG, handover, GitHub push) — no shortcuts

## Open infrastructure items (still not addressed)

- GitHub Pages — index.html ready, just needs enabling in repo Settings
- Supabase — not set up
- Q42 full build — dedicated future session
- Onboarding build — not started

These are not for Session 16 unless Session 16 finishes early and Melissa wants to tackle one.
