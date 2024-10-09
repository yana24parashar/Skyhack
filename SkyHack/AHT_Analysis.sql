SELECT 
    AVG(calls.call_duration - calls.handle_time) AS AV,
    reason.primary_call_reason
FROM
    calls
        JOIN
    reason ON calls.call_id = reason.call_id
GROUP BY reason.primary_call_reason
ORDER BY AV DESC;