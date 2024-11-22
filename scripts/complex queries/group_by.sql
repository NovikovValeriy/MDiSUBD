select user_id, AVG(bid_amount) from bid
group by user_id