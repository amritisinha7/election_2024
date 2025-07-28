-- which party won the most seats in a state ,and how many seats did each party win
SELECT 
    p.Party,
    COUNT(cr.`Constituency ID`) AS Seats_Won
FROM 
    `constituencywise_results` cr
JOIN 
    `partywise_results` p ON cr.`Party ID` = p.`Party ID`
JOIN 
    `statewise_results` sr ON cr.`Parliament Constituency` = sr.`Parliament Constituency`
JOIN 
    `states` s ON sr.`State ID` = s.`State ID`
WHERE 
    s.`State` = 'Rajasthan'
GROUP BY 
    p.Party
ORDER BY 
    Seats_Won DESC;
