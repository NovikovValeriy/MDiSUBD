#для каждого продавца на которого был оставлен отзыв вывести сумму всех ставок на все его лоты
select seller.id as seller_id, seller.name, seller.address, sum(bid.bid_amount) as total_sum from seller
join sellerreview
on sellerreview.seller_id = seller.id
join lot
on lot.seller_id = seller.id
join auction
on auction.lot_id = lot.id
join bid
on bid.auction_id = lot.id
group by seller.id;