-- winning candidate name,their party name ,totl votes and margin of victory for a specific state and constituency?
-- select 
-- cr.Winning_Candidate,
-- pr.Party,
-- Pr.party_alliance,
-- cr.total_votes,
-- cr.margin,
-- s.state,
-- cr.Constituency_Name
-- from 
-- constituencywise_results cr inner join
-- partywise_results pr on cr.party_id=pr.Party_id
-- inner join statewise_results sr on cr.Parliament_Constituency=sr.Parliament_Constituency
-- inner join states s on sr.state_id=s.state_id
-- where cr.Constituency_Name='HYDERABAD';
select* from constituencywise_results;
SELECT 
    `cr`.`Winning Candidate`,
    `pr`.`Party`,
    `pr`.`party_alliance`,
    `cr`.`Total Votes`,
    `cr`.`Margin`,
    `s`.`State`,
    `cr`.`Constituency Name`
FROM 
    `constituencywise_results` AS `cr`
INNER JOIN 
    `partywise_results` AS `pr` ON `cr`.`Party ID` = `pr`.`Party ID`
INNER JOIN 
    `statewise_results` AS `sr` ON `cr`.`Parliament Constituency` = `sr`.`Parliament Constituency`
INNER JOIN 
    `states` AS `s` ON `sr`.`State ID` = `s`.`State ID`
WHERE 
    `cr`.`Constituency Name` = 'GHAZIABAD'
LIMIT 0, 50000;
