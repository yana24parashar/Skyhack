-- Handle time calculations

SELECT 
    r.primary_call_reason,
    AVG(c.call_duration),
    AVG(c.handle_time)
FROM
    reason r
        JOIN
    calls c ON r.call_id = c.call_id
GROUP BY r.primary_call_reason;