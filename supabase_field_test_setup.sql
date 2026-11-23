-- MapDron: konfiguracja zdjęć lokalizacji
-- Uruchom jednorazowo w Supabase > SQL Editor > New query.

alter table public.places
  add column if not exists photo_urls text[] not null default '{}';

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'place-photos',
  'place-photos',
  true,
  10485760,
  array['image/jpeg','image/png','image/webp','image/heic','image/heif']
)
on conflict (id) do update
set public = true,
    file_size_limit = 10485760,
    allowed_mime_types = excluded.allowed_mime_types;

drop policy if exists "MapDron public read photos" on storage.objects;
create policy "MapDron public read photos"
on storage.objects for select
to anon, authenticated
using (bucket_id = 'place-photos');

drop policy if exists "MapDron authenticated upload own photos" on storage.objects;
create policy "MapDron authenticated upload own photos"
on storage.objects for insert
to authenticated
with check (
  bucket_id = 'place-photos'
  and (storage.foldername(name))[1] = auth.uid()::text
);

drop policy if exists "MapDron owners update own photos" on storage.objects;
create policy "MapDron owners update own photos"
on storage.objects for update
to authenticated
using (
  bucket_id = 'place-photos'
  and (storage.foldername(name))[1] = auth.uid()::text
)
with check (
  bucket_id = 'place-photos'
  and (storage.foldername(name))[1] = auth.uid()::text
);

drop policy if exists "MapDron owners delete own photos" on storage.objects;
create policy "MapDron owners delete own photos"
on storage.objects for delete
to authenticated
using (
  bucket_id = 'place-photos'
  and (storage.foldername(name))[1] = auth.uid()::text
);
