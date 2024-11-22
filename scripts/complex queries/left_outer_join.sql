SELECT a.id AS auction_id, u.username AS winner, a.status_id AS status, a.current_bid  FROM auction a
LEFT JOIN user u
ON a.winner_id = u.id