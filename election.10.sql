-- which candidate received the highest number of EVM votes in each consituency (Top 10)
-- SELECT 
--     cr.`Constituency Name`,
--     cd.`Constituency ID`,
--     cd.`Candidate`,
--     cd.`EVM Votes`
-- FROM 
--     `constituencywise_details` cd
-- INNER JOIN 
--     `constituencywise_results` cr ON cd.`Constituency ID` = cr.`Constituency ID`
-- ORDER BY 
--     cd.`EVM Votes` DESC
-- LIMIT 10;
SELECT  
    cr.`Constituency Name`,
    cd.`Constituency ID`,
    cd.`Candidate`,
    cd.`EVM Votes`
FROM 
    `constituencywise_details` cd
INNER JOIN 
    `constituencywise_results` cr ON cd.`Constituency ID` = cr.`Constituency ID`
WHERE 
    cd.`EVM Votes` = (
        SELECT MAX(cd1.`EVM Votes`)
        FROM `constituencywise_details` cd1
        WHERE cd1.`Constituency ID` = cd.`Constituency ID`
    )



