# MapDron — kontrola przed publikacją

## Zmiany w tej wersji
- Usunięto stary górny pasek z logo i przyciskiem GPS.
- Usunięto stare, zdublowane przyciski DroneTower i Dodaj miejsce z obszaru mapy.
- Naprawiono regułę CSS, która wymuszała widoczność pulpitu mimo przełączenia widoku.
- Wyszukiwanie ma pokazywać panel wyników bez tekstu powitalnego i kategorii.
- Zwiększono wersję pamięci podręcznej PWA.

## Co sprawdzono automatycznie
- Składnia JavaScript po zmianach.
- Brak powielonych atrybutów id w HTML.
- Usunięte odwołania do elementów starego nagłówka.
- Obecność obsługi przełączania widoku i wyszukiwarki.

## Blokery przed publicznym wydaniem
1. Nie wykonano pełnych testów na fizycznych telefonach i różnych przeglądarkach.
2. Nie przeprowadzono testów obciążeniowych ani audytu bezpieczeństwa Supabase.
3. Miejsca dodawane przez użytkowników są widoczne publicznie zgodnie z aktualną polityką bazy. Przed otwartą publikacją trzeba wdrożyć moderację, zgłaszanie i usuwanie nadużyć.
4. Zdjęcia w bucket place-photos są publiczne. Nie należy przesyłać zdjęć zawierających prywatne dane ani wizerunki bez zgody.
5. Brakuje zatwierdzonej polityki prywatności i regulaminu z danymi administratora, kontaktem, okresem przechowywania i opisem praw użytkowników.
6. Mapa wymaga internetu. Nie ma pobierania map offline.
7. Wyznaczanie trasy korzysta z zewnętrznego OSRM i nie gwarantuje informacji o korkach ani aktualnej przejezdności.
8. MapDron nie ustala legalności lotu. Użytkownik musi sprawdzić aktualne strefy i wymagania w oficjalnym DroneTower/PAŻP.
9. Należy zweryfikować konfigurację limitów e-mail i adresów przekierowań Supabase Auth.
10. Należy ustalić zasady korzystania z kafelków OpenStreetMap i widoczne przypisanie autorstwa zgodnie z polityką dostawcy.

## Test odbiorczy
- Android Chrome: instalacja PWA, ponowne uruchomienie, cofanie i odświeżanie.
- GPS: zgoda, odmowa, brak sygnału, dokładność.
- Mapa: ładowanie kafelków, zoom, obracanie i wybór punktu.
- Wyszukiwanie: wyniki, brak wyników, czyszczenie pola, powrót do mapy.
- Konto: rejestracja, logowanie, wylogowanie, reset hasła.
- Miejsca: dodanie, walidacja współrzędnych, duplikaty, odświeżenie.
- Zdjęcia: formaty, rozmiar, limit 4, błąd przesyłania i usuwanie.
- Ulubione: zapis i synchronizacja po ponownym logowaniu.
- Nawigacja: trasa i przejście do Google Maps.
- DroneTower: uruchomienie aplikacji i awaryjne przejście do sklepu.
- Dostępność: mały ekran, większa czcionka, obsługa klawiaturą i czytnikiem ekranu.

## Status
Wersja jest uporządkowanym kandydatem do testów przed publikacją. Nie jest jeszcze zatwierdzona jako wydanie produkcyjne.
