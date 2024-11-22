SELECT l.name AS lot_name, l.description, s.name AS seller, s.address FROM lot l
RIGHT JOIN seller s
ON l.seller_id = s.id