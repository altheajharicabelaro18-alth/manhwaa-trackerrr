# My Manhwa Tracker — PWA + Account Sync

Features:
- Reading status: Reading, Completed, Plan to Read, Dropped
- Publication status: 🟢 Ongoing, 🔵 Finished, 🟡 Hiatus, ⚪ Unknown
- Online publication-status lookup using AniList
- Email/password sign-in
- Cloud sync with Supabase (when configured)
- LocalStorage fallback when Supabase is not configured
- PWA install/offline support

## Enable sign-in and cloud storage

1. Create a project in Supabase.
2. In Supabase, open **SQL Editor** and run `supabase_schema.sql`.
3. Open **Project Settings → API** and copy the Project URL and public anon key.
4. Put them into `config.js`:
   - `SUPABASE_URL`
   - `SUPABASE_ANON_KEY`
5. Deploy the folder to GitHub Pages (or another static host).
6. In Supabase Authentication settings, configure the email confirmation/redirect URL for your deployed site if needed.

The browser only needs the public anon key. Do NOT put a `service_role` key in `config.js`.

## Publication status

The **Check online** button searches AniList by title and maps:
- RELEASING → Ongoing
- FINISHED → Finished
- HIATUS → Hiatus
- Other/unmatched → Unknown

Because not every manhwa is indexed, the status can also be selected manually.

## Existing data

Older local entries are kept in browser storage under the updated tracker key. When you sign in and save entries, they are synced to your Supabase account.
