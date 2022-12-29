select
    case
		when flags.id between 1000000000 and 1999999999 then 'GA'
		when flags.id between 5000000000 and 5999999999 then 'AZ'
		when flags.id between 3000000000 and 3999999999 then 'NC'
		when flags.id between 2000000000 and 2999999999 then 'NV'
		when flags.id between 6000000000 and 6999999999 then 'FL'
		when flags.id between 12000000000 and 12999999999 then 'OH'
		when flags.id between 16000000000 and 16999999999 then 'MI'
		when flags.id between 17000000000 and 17999999999 then 'MN'
		when flags.id between 19000000000 and 19999999999 then 'PA'
		when flags.id between 21000000000 and 21999999999 then 'VA'
		when flags.id between 18000000000 and 18999999999 then 'WI'
		when flags.id between 4000000000 and 4999999999 then 'CO'
		when flags.id between 10000000000 and 10999999999 then 'OOC'
	else 'error' end as state,
  turf.name as turf,
  flags.id as flag_id,
  triggers.name as flag_name,
  triggers.stops_qc as is_technical,
  flags.status,
  (flags.created_at::timestamp)::DATE as created_at
from sv.quality_control_flag_triggers as triggers
join sv.quality_control_flags as flags on flags.trigger_id = triggers.id
join sv.shifts on shifts.id = flags.triggered_by_shift_id
join sv.canvassers on canvassers.id = shifts.canvasser_id
join sv.turfs as turf on turf.id = canvassers.turf_id
where flags.created_at > '2022-03-01 00:00:00'
--and flags.created_at < '2022-05-09 00:00:00'
order by turf, flag_name
