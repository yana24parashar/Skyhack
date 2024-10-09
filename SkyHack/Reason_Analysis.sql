-- Maximum call reasons

SELECT 
    primary_call_reason, COUNT(*) AS reason_count
FROM
    reason
GROUP BY primary_call_reason
ORDER BY reason_count DESC;