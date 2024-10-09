WITH reason_frequency AS (
    SELECT 
        r.primary_call_reason,
        COUNT(r.call_id) AS reason_count
    FROM 
        reason r
    JOIN 
        calls c ON r.call_id = c.call_id
    GROUP BY 
        r.primary_call_reason
),
most_frequent_reason AS (
    SELECT 
        rf.primary_call_reason
    FROM 
        reason_frequency rf
    ORDER BY 
        rf.reason_count DESC
    LIMIT 1
),
least_frequent_reason AS (
    SELECT 
        rf.primary_call_reason
    FROM 
        reason_frequency rf
    ORDER BY 
        rf.reason_count ASC
    LIMIT 1
),
average_handling_time AS (
    SELECT
        r.primary_call_reason,
        AVG(c.handle_time) AS avg_handle_time
    FROM 
        calls c
    JOIN 
        reason r ON c.call_id = r.call_id
    GROUP BY 
        r.primary_call_reason
)
SELECT 
    ((most_freq.avg_handle_time - least_freq.avg_handle_time) / least_freq.avg_handle_time) * 100 AS percentage_difference
FROM 
    average_handling_time most_freq
JOIN 
    most_frequent_reason mfr ON most_freq.primary_call_reason = mfr.primary_call_reason
JOIN 
    average_handling_time least_freq ON least_freq.primary_call_reason = (
    SELECT primary_call_reason FROM least_frequent_reason
    );