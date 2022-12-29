--This query runs on Monday for Jeremey and Prabhjot
--Select all visual review response codes
select vrr.response, count(*)

--in the stateTenant.Table
from onearizona.voter_registration_scans vrs 

--append the visual review response descriptions to each individual form matching on form ID
left join onearizona.voter_registration_scan_visual_review_responses vrsvrr on vrs.id = vrsvrr.voter_registration_scan_id 

--left join visual review responses on response id
left join onearizona.visual_review_responses vrr on vrr.id = vrsvrr.visual_review_response_id 

--filtering for forms where qc was done after a specific date
where vrs.created_at > '2022-01-01'

--counts are grouped on response type and ordered by response type
group by 1
order by 1
