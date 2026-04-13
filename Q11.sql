-- 1. Add 15 days
SELECT SYSDATE + 15 FROM DUAL;

-- 2. Add and subtract 5 months
SELECT ADD_MONTHS(SYSDATE, 5), ADD_MONTHS(SYSDATE, -5) FROM DUAL;

-- 3. ASCII of 'M'
SELECT ASCII('M') FROM DUAL;

-- 4. Character of ASCII values
SELECT CHR(67), CHR(65), CHR(84) FROM DUAL;

-- 5. Last day of month
SELECT LAST_DAY(SYSDATE) FROM DUAL;

-- 6. Date difference
SELECT SYSDATE - TO_DATE('20-05-2015','DD-MM-YYYY') FROM DUAL;

-- 7. Months between dates
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('03-03-2016','DD-MM-YYYY')) FROM DUAL;

-- 8. Second occurrence of 'or'
SELECT INSTR('corporate floor','or',3,2) FROM DUAL;

-- 9. Capitalize each word
SELECT INITCAP('marwadi university') FROM DUAL;

-- 10. Current user name and ID
SELECT USER, UID FROM DUAL;