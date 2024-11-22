SELECT * FROM auction
WHERE start_bid >= 500
	AND date(start_time) BETWEEN '2024-09-01' AND '2024-11-01'
    AND winner_id IS NULL