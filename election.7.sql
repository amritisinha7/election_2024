-- what is the distribution of EVM votes versus postal votes for candidates in a specific constituency?
SELECT 
    cd.`EVM Votes`,
    cd.`Postal Votes`,
    cd.`Total Votes`,
    cd.`Candidate`,
    cr.`Constituency Name`
FROM 
    `constituencywise_results` AS cr 
    
join
    `constituencywise_details` as cd 
    on
    cr.`Constituency ID`=cd.`Constituency ID`

