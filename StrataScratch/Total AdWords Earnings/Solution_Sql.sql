SELECT  business_type
       ,SUM(adwords_earnings) AS earnings
FROM google_adwords_earnings
GROUP BY  business_type;