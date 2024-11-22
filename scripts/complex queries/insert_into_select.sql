commit;
set foreign_key_checks = 0;
insert sellerreview (user_id, seller_id, rating, review_text)
select user_id, appraiser_id as seller_id, rating, review_text from appraiserreview;
set foreign_key_checks = 1;
select * from sellerreview;
rollback;