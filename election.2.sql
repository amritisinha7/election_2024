/*Total seats won by NDA Alliencs*/
-- select Party, sum( won) as total
-- from partywise_results
-- where Party='NDA'
-- ;
-- Total Seats won by NDA Alliance
SELECT 
    SUM(
        CASE 
            WHEN party IN (
                'Bharatiya Janata Party - BJP',
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
                'Sikkim Krantikari Morcha - SKM'
            )
            THEN `Won`
            ELSE 0
        END
    ) AS NDA_Total_Seats_Won
FROM 
    partywise_results;
/*Total seats won by NDA Alliencs parties*/  
SELECT
    Party as Party_Name,
    won as Seats_Won
FROM
    partywise_results
WHERE
    party IN (
        'Bharatiya Janata Party - BJP',
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
        'Sikkim Krantikari Morcha - SKM'
    )
order by Seats_Won desc;

    
    
    
    
    
    
    
    
    
    
    
