SELECT content_id, date_release  FROM digital_content 
GROUP BY content_id HAVING date_release > '2000-00-00';

SELECT * FROM country
WHERE country_name IN('Denmark','South Korea','India','Greece')
ORDER BY subscription_price DESC ;

SELECT * FROM tv_show NATURAL LEFT OUTER join episode
GROUP BY content_id;

SELECT * FROM tv_show NATURAL LEFT OUTER join episode;