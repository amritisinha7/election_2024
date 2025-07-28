-- Total seats won by I.N.D.I.A Alliance
SELECT 
    SUM(
        CASE 
            WHEN party IN (
                'Indian National Congress - INC',
                'All India Trinamool Congress - AITC',
                'Dravida Munnetra Kazhagam - DMK',
                'Aam Aadmi Party - AAP',
                'Samajwadi Party - SP',
                'Rashtriya Janata Dal - RJD',
                'Shiv Sena (Uddhav Balasaheb Thackeray) - SS(UBT)',
                'Nationalist Congress Party (Sharadchandra Pawar) - NCP(SP)',
                'Communist Party of India (Marxist) - CPI(M)',
                'Communist Party of India - CPI',
                'Jharkhand Mukti Morcha - JMM',
                'Indian Union Muslim League - IUML',
                'Viduthalai Chiruthaigal Katchi - VCK',
                'Rashtriya Lok Dal - RLD',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Revolutionary Socialist Party - RSP'
            )
            THEN `Won`
            ELSE 0
        END
    ) AS INDIA_Total_Seats_Won
FROM partywise_results;
-- seat won bt I.N.D.I.A Allience Parties
SELECT
    Party,Won
FROM
    partywise_results
WHERE
    party IN ( 'Indian National Congress - INC',
                'All India Trinamool Congress - AITC',
                'Dravida Munnetra Kazhagam - DMK',
                'Aam Aadmi Party - AAP',
                'Samajwadi Party - SP',
                'Rashtriya Janata Dal - RJD',
                'Shiv Sena (Uddhav Balasaheb Thackeray) - SS(UBT)',
                'Nationalist Congress Party (Sharadchandra Pawar) - NCP(SP)',
                'Communist Party of India (Marxist) - CPI(M)',
                'Communist Party of India - CPI',
                'Jharkhand Mukti Morcha - JMM',
                'Indian Union Muslim League - IUML',
                'Viduthalai Chiruthaigal Katchi - VCK',
                'Rashtriya Lok Dal - RLD',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Revolutionary Socialist Party - RSP'
    )
order by Won desc;

