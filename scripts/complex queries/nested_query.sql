SELECT * FROM bid
WHERE auction_id IN (
	SELECT id FROM auction
    WHERE winner_id IS NOT NULL
);