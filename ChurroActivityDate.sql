/*
Find the activity date and the pe_description of facilities with the name 'STREET CHURROS' and with a score of less than 95 points.

Link: https://platform.stratascratch.com/coding/9688-churro-activity-date?code_type=1

Approach:
-- activity_date | pe_description
-- columnas que voy a usar
-- activity_date / pe_description / facility_name / score
-- select the columns that i want output
-- filtring with ilike facility_name 'street%churros'
-- filtring score less < 95
*/

select 
    activity_date,
    pe_description
from los_angeles_restaurant_health_inspections
where facility_name ilike '%street churros%'
    and score < 95;

