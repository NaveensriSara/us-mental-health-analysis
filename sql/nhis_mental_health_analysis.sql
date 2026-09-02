#Dataset summary
SELECT
    MIN(year) AS first_year,
    MAX(year) AS last_year,
    COUNT(*) AS observations,
    COUNT(DISTINCT question) AS questions
FROM public.nhis_mental_health_clean;

#What I want to focus on; records per question
SELECT
    question,
    COUNT(*) AS records
FROM public.nhis_mental_health_clean
GROUP BY question
ORDER BY records DESC;

#Overall Anxiety trend 
SELECT
    year,
    percent,
    low_ci,
    high_ci
FROM public.nhis_mental_health_clean
WHERE question =
'Have you EVER been told by a doctor or other health professional that you had any type of anxiety disorder?'
AND demographics_type = 'Total'
ORDER BY year;

#Overall Depression trend 
SELECT
    year,
    percent,
    low_ci,
    high_ci
FROM public.nhis_mental_health_clean
WHERE question =
'Have you EVER been told by a doctor or other health professional that you had any type of depression?'
AND demographics_type = 'Total'
ORDER BY year;

#Anxiety vs Depression 
SELECT
    year,
    CASE
        WHEN question LIKE '%anxiety disorder%'
            THEN 'Anxiety'
        WHEN question LIKE '%type of depression%'
            THEN 'Depression'
    END AS condition,
    percent
FROM public.nhis_mental_health_clean
WHERE demographics_type = 'Total'
AND (
    question LIKE '%anxiety disorder%'
    OR question LIKE '%type of depression%'
)
ORDER BY year, condition;