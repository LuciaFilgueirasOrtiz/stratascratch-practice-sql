/*
Find the average number of bathrooms and bedrooms for each city’s property types.
Output the result along with the city name and the property type.

Link: https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms?code_type=1
*/

select 
    city,
    property_type,
    avg(bathrooms) as avg_bath,
    avg(bedrooms) as avg_bed
from airbnb_search_details
group by 1,2

