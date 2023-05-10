-- https://github.com/robotautas/kursas/blob/master/DB/db2/db2.md
-- https://github.com/DonatasNoreika/Python-pamokos/wiki/SQL-2-u%C5%BEduotys

-- 1. Išrinkite duomenis apie darbuotoją (asmens kodą, vardą ir pavarde) iš lenteles DARBUOTOJAS, kuris gimęs 1988 m. liepos 20 d.
-- SELECT ASMENS_KODAS, VARDAS, PAVARDĖ FROM DARBUOTOJAS
-- WHERE ASMENS_KODAS LIKE "_88%";

-- 2. Išrinkite duomenis apie darbuotojus (nuo kada dirba, asmens kodą) iš lentelės DARBUOTOJAS, kurie būtų įsidarbinę nuo 2009 m. spalio 30 d. iki 2012 m. lapkričio 11d.
-- SELECT DIRBA_NUO, ASMENS_KODAS FROM DARBUOTOJAS
-- WHERE DIRBA_NUO BETWEEN DATE("2009-10-30") AND DATE("2012-11-11");

-- 3. Išrinkite duomenis apie darbuotojus (vardą, Skyriaus ID ir Projekto ID) iš lentelės DARBUOTOJAS, kurie dirba 2 ir 3 skyriuose (panaudoti IN operatorių).
-- SELECT VARDAS, SKYRIUS_ID, PROJEKTAS_ID FROM DARBUOTOJAS
-- WHERE SKYRIUS_ID IN (2, 3);

-- 4. Išrinkite duomenis (vardą, pavarde ir asmens kodą) apie visas moteris iš lentelės DARBUOTOJAS (panaudojant operatorių LIKE).
-- SELECT VARDAS, PAVARDĖ, ASMENS_KODAS FROM DARBUOTOJAS
-- WHERE ASMENS_KODAS LIKE "4%"
-- OR
-- ASMENS_KODAS LIKE "6%";

-- 5. Išrinkite visus duomenis apie visus darbuotojus iš lentelės DARBUOTOJAS, kurie yra gimę 12 dieną (panaudojant operatorių LIKE).
-- SELECT * FROM DARBUOTOJAS
-- WHERE ASMENS_KODAS LIKE "_____12%";

-- 6. išrinkite visus projektus iš lentelės PROJEKTAS, kurių pavadinime antra raidė būtų ‘a’.
-- SELECT * FROM PROJEKTAS
-- WHERE PAVADINIMAS LIKE "_a%";

-- 7. Išrinkite visus darbuotojus iš lentelės DARBUOTOJAS, kuriems nepaskirtos jokios pareigos.
-- SELECT * FROM DARBUOTOJAS
-- WHERE PAREIGOS IS NULL;

-- 8. Išrinkite duomenis apie darbuotojus (vardą, pavarde, nuo kada dirba ir pareigas), kurie dirba nuo 2011-02-12 ir jų pareigos yra Programuotojai.
-- SELECT VARDAS, PAVARDĖ, DIRBA_NUO, PAREIGOS FROM DARBUOTOJAS
-- WHERE DIRBA_NUO > DATE("2011-02-12")
-- AND PAREIGOS = "Programuotojas";

-- 9. Išrinkite duomenis apie darbuotojus (vardą, pavardę, Skyriaus ID ir Projekto ID) iš lentelės DARBUOTOJAS, kurie yra iš Gamybos (2) skyriaus arba 1 projekto.
-- SELECT VARDAS, PAVARDĖ, SKYRIUS_ID, PROJEKTAS_ID, PAVADINIMAS
-- FROM DARBUOTOJAS
-- JOIN SKYRIUS
-- ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
-- WHERE SKYRIUS_ID = 2
-- OR PROJEKTAS_ID = 1;

-- 10. Išrinkite visus darbuotojų vardus, išskyrus tuos, kurių vardai prasideda raide ‘A’.
-- SELECT VARDAS FROM DARBUOTOJAS
-- WHERE VARDAS NOT LIKE "A&";

-- 11. Išrinkite duomenis apie darbuotojus (vardą, pavardę ir nuo kada dirba) iš lentelės DARBUOTOJAS ir išrikiuokite visus duomenis nuo dirbančio seniausiai iki naujausiai.
-- SELECT VARDAS, PAVARDĖ, DIRBA_NUO FROM DARBUOTOJAS
-- ORDER BY DIRBA_NUO;

-- 12. Išrinkite duomenis apie darbuotojus (vardą, pavardę ir nuo kada dirba) iš lentelės DARBUOTOJAS ir išrikiuokite visus duomenis nuo dirbančio naujausiai iki seniausiai.
-- SELECT VARDAS, PAVARDĖ, DIRBA_NUO FROM DARBUOTOJAS
-- ORDER BY DIRBA_NUO DESC;

-- 13. Išrinkite iš lentelės DARBUOTOJAS projektų ID, kurie būtų minimalus ir maksimalus skaičius.
-- SELECT MIN(PROJEKTAS_ID), MAX(PROJEKTAS_ID) FROM DARBUOTOJAS;

-- 14. Išrinkite duomenis apie tai, kiek kiekviename projekte yra priskirta žmonių (projekto numeris ir skaičius, kiek jame dalyvauja žmonių).
-- SELECT COUNT(*) AS zmoniu_skaicius, PROJEKTAS_ID FROM DARBUOTOJAS
-- GROUP BY PROJEKTAS_ID
-- ORDER BY PROJEKTAS_ID;

-- 15. #14 punkto užklausą pataisykite taip, kad rodytų tik tuos projektus, kuriems priskirti daugiau nei 3 darbuotojai.
-- SELECT COUNT(*) AS zmoniu_skaicius, PROJEKTAS_ID FROM DARBUOTOJAS
-- GROUP BY PROJEKTAS_ID
-- HAVING zmoniu_skaicius > 3
-- ORDER BY PROJEKTAS_ID;

-- 16. Išrinkite duomenis (projekto numeris, pareigos, skaičius) iš lentelės DARBUOTOJAS, kiek programuotojų dirba kiekvienam projekte.
-- SELECT PROJEKTAS_ID, PAREIGOS, COUNT(*) AS skaicius FROM DARBUOTOJAS
-- WHERE PAREIGOS = "Programuotojas"
-- GROUP BY PROJEKTAS_ID
-- ORDER BY skaicius;