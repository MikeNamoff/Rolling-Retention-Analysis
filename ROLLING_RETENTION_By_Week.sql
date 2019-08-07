WITH by_week AS
(
SELECT customerinformationid, EXTRACT(week from businessday) as week
FROM transactionsale
WHERE storeid NOT IN (9,10,11,14,15,16,17,18,19,20,21,22,23,24,25,26,27,100,135,136,847,922,1006,1103,1482,1747,1937,2067,2079,2440,2681,2682,2684,2905,3168,3191,3212,3737,3748,3873,3921,3996,4303)
AND businessday BETWEEN '2019-01-02' AND '2019-07-23'
AND customerinformationid is not null
GROUP BY customerinformationid, week
),

first_week as
(
SELECT customerinformationid, week, first_value(week) OVER (PARTITION BY customerinformationid ORDER BY week ASC ROWS UNBOUNDED PRECEDING) AS first_week
FROM by_week
),

week_number as
(
SELECT customerinformationid, week, first_week, (week-first_week) AS week_number
FROM first_week 
)


SELECT first_week,
  SUM(CASE WHEN week_number = 0 THEN 1 ELSE 0 END) AS week_0,
  SUM(CASE WHEN week_number = 1 THEN 1 ELSE 0 END) AS week_1,
  SUM(CASE WHEN week_number = 2 THEN 1 ELSE 0 END) AS week_2,
  SUM(CASE WHEN week_number = 3 THEN 1 ELSE 0 END) AS week_3,
  SUM(CASE WHEN week_number = 4 THEN 1 ELSE 0 END) AS week_4,
  SUM(CASE WHEN week_number = 5 THEN 1 ELSE 0 END) AS week_5,
  SUM(CASE WHEN week_number = 6 THEN 1 ELSE 0 END) AS week_6,
  SUM(CASE WHEN week_number = 7 THEN 1 ELSE 0 END) AS week_7,
  SUM(CASE WHEN week_number = 8 THEN 1 ELSE 0 END) AS week_8,
  SUM(CASE WHEN week_number = 9 THEN 1 ELSE 0 END) AS week_9,
  SUM(CASE WHEN week_number = 10 THEN 1 ELSE 0 END) AS week_10,
  SUM(CASE WHEN week_number = 11 THEN 1 ELSE 0 END) AS week_11,
  SUM(CASE WHEN week_number = 12 THEN 1 ELSE 0 END) AS week_12,
  SUM(CASE WHEN week_number = 13 THEN 1 ELSE 0 END) AS week_13,
  SUM(CASE WHEN week_number = 14 THEN 1 ELSE 0 END) AS week_14,
  SUM(CASE WHEN week_number = 15 THEN 1 ELSE 0 END) AS week_15,
  SUM(CASE WHEN week_number = 16 THEN 1 ELSE 0 END) AS week_16,
  SUM(CASE WHEN week_number = 17 THEN 1 ELSE 0 END) AS week_17,
  SUM(CASE WHEN week_number = 18 THEN 1 ELSE 0 END) AS week_18,
  SUM(CASE WHEN week_number = 19 THEN 1 ELSE 0 END) AS week_19,
  SUM(CASE WHEN week_number = 20 THEN 1 ELSE 0 END) AS week_20,
  SUM(CASE WHEN week_number = 21 THEN 1 ELSE 0 END) AS week_21,
  SUM(CASE WHEN week_number = 22 THEN 1 ELSE 0 END) AS week_22,
  SUM(CASE WHEN week_number = 23 THEN 1 ELSE 0 END) AS week_23,
  SUM(CASE WHEN week_number = 24 THEN 1 ELSE 0 END) AS week_24,
  SUM(CASE WHEN week_number = 25 THEN 1 ELSE 0 END) AS week_25,
  SUM(CASE WHEN week_number = 26 THEN 1 ELSE 0 END) AS week_26,
  SUM(CASE WHEN week_number = 27 THEN 1 ELSE 0 END) AS week_27,
  SUM(CASE WHEN week_number = 28 THEN 1 ELSE 0 END) AS week_28,
  SUM(CASE WHEN week_number = 29 THEN 1 ELSE 0 END) AS week_29
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_30
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_31,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_32,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_33,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_34,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_35,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_36,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_37,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_38,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_39,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_40,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_41,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_42,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_43,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_44,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_45,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_46,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_47,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_48,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_49,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_50,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_51,
  --SUM(CASE WHEN week_number = 30 THEN 1 ELSE 0 END) AS week_52
FROM week_number
GROUP BY first_week
ORDER BY first_week

