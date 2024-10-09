ALTER TABLE sellerreview
ADD CHECK (rating >= 1 AND rating <= 5)