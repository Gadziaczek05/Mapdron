# MapDron — testy terenowe

## Wersja
Aplikacja testowa PWA dla Androida. Wersja nie jest jeszcze produkcyjna.

## Pierwsza konfiguracja
1. Otwórz plik `supabase_field_test_setup.sql`.
2. Skopiuj całą zawartość do Supabase → SQL Editor → New query.
3. Uruchom zapytanie. Tworzy kolumnę `photo_urls`, publiczny bucket `place-photos` i polityki dostępu do zdjęć.
4. Otwórz stronę MapDron i zaloguj się.
5. Dodawanie miejsc do wspólnej bazy wymaga aktywnego konta.

## Testy na telefonie
1. Otwórz MapDron w Chrome przez HTTPS.
2. Zezwól na lokalizację podczas używania aplikacji.
3. Sprawdź przycisk GPS i dokładność lokalizacji.
4. Wybierz miejsce z listy, sprawdź pinezkę i panel trasy.
5. Dodaj testową lokalizację i maksymalnie 4 zdjęcia.
6. Sprawdź, czy miejsce i zdjęcia pojawiły się na liście po odświeżeniu.
7. Zapisz miejsce w ulubionych, zamknij aplikację i sprawdź, czy ulubione pozostały.
8. Sprawdź DroneTower na urządzeniu z zainstalowaną aplikacją.
9. Zainstaluj MapDron z menu Chrome lub przyciskiem instalacji, jeśli przeglądarka go pokaże.

## Ograniczenia testowej wersji
- Mapa i wyszukiwanie kafelków wymagają internetu. Service Worker buforuje podstawowe pliki aplikacji, ale nie pobiera mapy offline.
- Czas i dystans trasy są szacowane przez zewnętrzny serwis routingu. Nie uwzględniają wiarygodnie bieżących korków.
- Link do nawigacji otwiera Google Maps.
- MapDron nie sprawdza legalności lotu ani aktualnych stref lotniczych. Przed każdym lotem należy sprawdzić oficjalny system PAŻP/DroneTower.
- Nie testuj w pobliżu lotnisk, stref ograniczonych ani nad osobami. Zachowaj wymagane odległości i przepisy.

## Zgłaszanie błędów
Zapisz zrzut ekranu, nazwę przycisku, który nie działa, model telefonu i informację, czy był internet. Nie umieszczaj na zrzutach danych logowania ani prywatnych danych.
