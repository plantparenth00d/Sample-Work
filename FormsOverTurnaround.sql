select files.original_filename,
    files.shift_id,
    shifts.status,
    shifts.created_at,
    (cast (files.qc_deadline as date) - cast (shifts.created_at as date)) as turnaround,
    case
		when files.shift_id between 1000000000 and 1999999999 then 'GA'
		when files.shift_id between 5000000000 and 5999999999 then 'AZ'
		when files.shift_id between 3000000000 and 3999999999 then 'NC'
		when files.shift_id between 2000000000 and 2999999999 then 'NV'
		when files.shift_id between 6000000000 and 6999999999 then 'FL'
		when files.shift_id between 12000000000 and 12999999999 then 'OH'
		when files.shift_id between 16000000000 and 16999999999 then 'MI'
		when files.shift_id between 17000000000 and 17999999999 then 'MN'
		when files.shift_id between 19000000000 and 19999999999 then 'PA'
		when files.shift_id between 21000000000 and 21999999999 then 'VA'
		when files.shift_id between 18000000000 and 18999999999 then 'WI'
		when files.shift_id between 4000000000 and 4999999999 then 'CO'
		when files.shift_id between 10000000000 and 10999999999 then 'OOC'
		else 'error' end as state
from sv.voter_registration_scan_batches as files
left join sv.shifts as shifts
    on files.shift_id = shifts.id
where turnaround > 6 and shifts.created_at > '2022-01-01'
order by turnaround desc