SELECT 
    user_id, 
    auction_id,
    bid_amount,
    RANK() OVER (PARTITION BY auction_id ORDER BY bid_amount) AS rank_in_auction
FROM bid;