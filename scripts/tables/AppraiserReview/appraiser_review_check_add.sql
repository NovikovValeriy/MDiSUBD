ALTER TABLE appraiserreview
ADD CHECK (rating >= 1 AND rating <= 5)