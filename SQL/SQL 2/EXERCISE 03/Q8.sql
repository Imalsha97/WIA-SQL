-a-
select PART_NO, DESCRIPTION, CONTRACT, TYPE_CODE, PLANNER_BUYER, UNIT_MEAS, PART_STATUS 
from inventory_part_tab;

-b-
select count(PART_NO) 
from inventory_part_tab
group by TYPE_CODE;
