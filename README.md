# Sit

A minimal MIDL meditation timer + log. Static page (GitHub Pages) backed by Supabase.

- Pick a MIDL skill (00–16), a duration, sit. Bell at start and end.
- Short reflection after each sit: calm 1–5, hindrances, marker, a note.
- Stats: streaks, 30-day minutes, calm trend, hindrance frequency, per-skill totals, full log.
- Login is a username only. Same name on any device = same log. Nothing is private.

## Supabase

Schema in `schema.sql`. Tables `profiles` and `sits` with RLS policies that allow the `anon` role full access (username-only model). The publishable key in `index.html` is meant to be public.

Content condensed from [midlmeditation.com](https://midlmeditation.com/midl-meditation-system).
