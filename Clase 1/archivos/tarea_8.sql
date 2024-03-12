create view view_r as 
(select 
	a.fight_id, 
	a.event_id, 
	a.left_fighter_name,
	a.right_fighter_name,
	b.title
from fights a
right join  events b 
on a.event_id = b.event_id);


create view view_l as
(select 
	a.fight_id, 
	a.event_id, 
	a.left_fighter_name,
	a.right_fighter_name,
	b.title
from fights a
left join  events b 
on a.event_id = b.event_id);

create view view_i as 
(select 
	a.fight_id, 
	a.event_id, 
	a.left_fighter_name,
	a.right_fighter_name,
	b.title
from fights a
inner join  events b 
on a.event_id = b.event_id)
;

DELIMITER // -- Define a custom delimiter to avoid conflicts with semicolons in the trigger body

CREATE TRIGGER event_log_trigger AFTER INSERT ON events FOR EACH ROW
BEGIN
  -- Insert details of the inserted event into a log table
  INSERT INTO event_log (event_id, title, date, location, canceled, inserted_at)
  VALUES (NEW.event_id, NEW.title, NEW.date, NEW.location, NEW.canceled, NOW());
END //
DELIMITER ;  -- Reset the delimiter to the default semicolon
