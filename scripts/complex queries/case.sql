select 	id,
		winner_id, 
        current_bid, 
        case 
			when status_id = 1 then 'Not started'
            when status_id = 2 then 'On going'
            else 'Ended'
		end as status,
        lot_id,
        start_bid,
        start_time,
        end_time
from auction