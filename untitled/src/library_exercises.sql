-- 1. Show the members under the name "Jens S." who were born before 1970 that became members of the library in 2013.
SELECT * FROM tmember WHERE cName LIKE 'Jens S.' AND dBirth < '1970-01-01' AND dNewMember LIKE '2013%';

-- 2. Show those books that have not been published by the publishing companies with ID 15 and 32, except if they were published before 2000.
SELECT * from tbook WHERE NOT nPublishingCompanyID NOT LIKE '15' AND '32' OR nPublishingYear < '2000-01-01';

-- 3. Show the name and surname of the members who have a phone number, but no address.
SELECT cName, cSurname FROM tmember WHERE cPhoneNo IS NOT NULL AND cAddress IS NULL;

-- 4. Show the authors with surname "Byatt" whose name starts by an "A" (uppercase) and contains an "S" (uppercase).

SELECT * FROM tauthor WHERE cSurname = 'Byatt' AND cName LIKE 'A%' AND cName LIKE '%S%';;
