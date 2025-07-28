-- Add new column field in table partwise_results to get the party Allience   as 
-- as  NDA,I.N.D.I. and OTHER
alter table partywise_results
add party_alliance varchar(50);
select* from partywise_results;
SET SQL_SAFE_UPDATES = 0;

UPDATE partywise_results
SET party_alliance = 'I.N.D.I.A'
WHERE party IN (
    'Indian National Congress - INC',
    'Aam Aadmi Party - AAAP',
    'All India Trinamool Congress - AITC',
    'Bharat Adivasi Party - BHRTADVSIP',
    'Communist Party of India (Marxist) - CPI(M)',
    'Communist Party of India (Marxist–Leninist) (Liberation) - CPI(ML)(L)',
    'Communist Party of India - CPI',
    'Dravida Munnetra Kazhagam - DMK',
    'Indian Union Muslim League - IUML',
    'Jammu & Kashmir National Conference - JKN',
    'Jharkhand Mukti Morcha - JMM',
    'Kerala Congress - KEC',
    'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
    'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
    'Rashtriya Janata Dal - RJD',
    'Rashtriya Loktantrik Party - RLTP',
    'Revolutionary Socialist Party - RSP',
    'Samajwadi Party - SP',
    'Shiv Sena (Uddhav Balasaheb Thackeray) - SHSUBT',
    'Viduthalai Chiruthaigal Katchi - VCK'
);
UPDATE partywise_results
SET party_alliance = 'NDA'
WHERE party IN ('Bharatiya Janata Party - BJP',
                'Telugu Desam - TDP',
                'Janata Dal (United) - JD(U)',
                'Shiv Sena - SHS',
                'AISU Party - AISU',
                'Apna Dal (Soneylal) - ADAL',
                'Asom Gana Parishad - AGP',
                'Hindustani Awam Morcha (Secular) - HAMS',
                'Janasena Party - JnP',
                'Janata Dal (Secular) - JD(S)',
                'Lok Janshakti Party(Ram Vilas) - LJPRV',
                'Nationalist Congress Party - NCP',
                'Rashtriya Lok Dal - RLD',
                'Sikkim Krantikari Morcha - SKM');
UPDATE partywise_results
SET party_alliance ='OTHER'
WHERE party_alliance IS NULL;
select party_alliance,
sum(won)
from partywise_results
group by party_alliance;
