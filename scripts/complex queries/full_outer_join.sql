select a.id as auction_id, a.status_id, a.current_bid, a.start_bid, u.username, u.email from auction a
left join user u
on a.winner_id = u.id
union
select a.id as auction_id, a.status_id, a.current_bid, a.start_bid, u.username, u.email from auction a
right join user u
on a.winner_id = u.id