
-- select distinct count (winning_candidate) as total_seat
-- from
-- constituencywise_results;
-- SELECT COUNT(DISTINCT ["Winning_Candidate"]) as total_seats
-- FROM constituencywise_results;
-- select * from constituencywise_results;
-- SELECT COUNT(DISTINCT `Winning Candidate`) AS total_seats
-- FROM constituencywise_results;
-- 2) Total number of seats available in each sates.
SELECT 
    -- states AS State_name,
--     COUNT(cr.parliament_constituency) AS Total_Seats
-- FROM 
--     constituencywise_results cr
-- INNER JOIN 
--     statewise_results sr ON cr.parliament_constituency = sr.parliament_constituency
-- INNER JOIN 
--     states s ON sr.state_id = s.state_id
-- GROUP BY 
--     s.state;
use election;
SELECT 
    s.`state` AS State_name,
    COUNT(cr.`Parliament Constituency`) AS Total_Seats
FROM 
    `constituencywise_results` cr
INNER JOIN 
    `statewise_results` sr ON cr.`Parliament Constituency` = sr.`Parliament Constituency`
INNER JOIN 
    `states` s ON sr.`state id` = s.`state id`
GROUP BY 
    s.`state`;

SELECT 
    s.state AS State_name,
    COUNT(cr.parliament_constituency) AS Total_Seats
FROM 
    constituencywise_results cr
INNER JOIN 
    statewise_results sr ON cr.parliament_constituency = sr.parliament_constituency
INNER JOIN 
    states s ON sr.state_id = s.state_id
GROUP BY 
    s.state;



