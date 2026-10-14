# Sit

A habit tracker, mood check-in and MIDL meditation timer. Static page (GitHub Pages) backed by Supabase.

- **Today** (home): check in with 1–5 stars for anxiety and happiness, any number of times a day. Log meditation (timed / reflected), exercise (run, bike, swim, other: consistent or HIIT; lift; tennis), walks and reading. Only the activity is required. Each habit gets a calendar heatmap and a time-of-day strip.
- **Trends**: check-in line, days per week for each habit, and how check-ins line up with each habit (difference within 24h after, and correlation with how many of the last 7 days you did it).
- Timer sits count as timed meditation.

- Pick a MIDL skill (00–16), a duration, sit. Bell at start and end.
- Short reflection after each sit: calm 1–5, hindrances, marker, a note.
- Stats: streaks, 30-day minutes, calm trend, hindrance frequency, per-skill totals, full log.
- "Before this app" in Stats: enter lifetime sits/minutes from elsewhere; they're added to the totals.
- Login is a username only. Same name on any device = same log. Nothing is private.

## Supabase

Schema in `schema.sql`. Tables `profiles`, `sits` and `entries` with RLS policies that allow the `anon` role full access (username-only model). The publishable key in `index.html` is meant to be public.

Content condensed from [midlmeditation.com](https://midlmeditation.com/midl-meditation-system).
