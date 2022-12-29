select s.status,
    sum(s.soft_count_cards_total_collected) as total_forms,
    t.name,
    	case
		when t.id between 1000000000 and 1999999999 then 'GA'
		when t.id between 5000000000 and 5999999999 then 'AZ'
		when t.id between 3000000000 and 3999999999 then 'NC'
		when t.id between 2000000000 and 2999999999 then 'NV'
		when t.id between 6000000000 and 6999999999 then 'FL'
		when t.id between 12000000000 and 12999999999 then 'OH'
		when t.id between 16000000000 and 16999999999 then 'MI'
		when t.id between 17000000000 and 17999999999 then 'MN'
		when t.id between 19000000000 and 19999999999 then 'PA'
		when t.id between 21000000000 and 21999999999 then 'VA'
		when t.id between 18000000000 and 18999999999 then 'WI'
		when t.id between 4000000000 and 4999999999 then 'CO'
		when t.id between 10000000000 and 10999999999 then 'OOC'
		else 'error' end
from sv.shifts s
join sv.canvassers c
    on s.canvasser_id = c.id
join sv.turfs t
    on c.turf_id = t.id
where s.shift_start > '2022-03-01'
group by t.id, s.status, t.name
