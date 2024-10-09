
-- SENTIMENTS ASSOCIATED WITH CALL REASONS
SELECT 
    r.primary_call_reason,
    AVG(s.average_sentiment) AS average_sentiment
FROM
    reason r
        JOIN
    sentiment s ON r.call_id = s.call_id
GROUP BY r.primary_call_reason;


