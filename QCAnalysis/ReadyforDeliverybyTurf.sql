--in this query, unique registration form IDs are being used to count the individual forms in in ready for delivery status
SELECT t.name, t.id, s.status, 
MIN(s.ready_for_qc_at), COUNT(DISTINCT rf.id) as forms_total,
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
		else 'error' end as state
FROM sv.shifts AS s
JOIN sv.registration_forms AS rf ON s.id = rf.shift_id
JOIN sv.locations AS l ON s.location_id = l.id
JOIN sv.turfs AS t ON l.turf_id = t.id
WHERE s.shift_start > '2022-01-01'
and s.status = 'ready_for_delivery'
GROUP BY t.name, s.status, t.id
