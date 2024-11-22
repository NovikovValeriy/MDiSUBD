select auction_id, COUNT(*) as bid_count from bid
group by auction_id
having COUNT(*) > 5