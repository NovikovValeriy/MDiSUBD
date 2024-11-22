select * from auction
where exists (
	select * from user where auction.winner_id = user.id
)