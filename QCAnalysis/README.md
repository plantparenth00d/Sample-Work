Scheduled Jobs
--
[Count of Forms by QC Visual Review Response](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/CountFormsbyQCResponse.sql)

[Scheduled Civis Job](https://platform.civisanalytics.com/spa/#/scripts/sql/150897467)
Runs Monday at 10:15 am ET overwriting a shared google sheet for the Program Manager and point of contact. This file
is being used as a means to track all responses on all forms by partner for the state tenant. Parameters set the script to pull from program start Jan.1st 2022.


[Scheduled Dashboard Update Job](https://platform.civisanalytics.com/users/sign_in/#/exports/154571384)

These queries run in parallel at the top of every hour, refreshing the Google Data Studio dashboard for National Program staff.

- [FlagsbyType.sql](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/FlagsbyType.sql) populates the `flags` table

- [Ready for Delivery by Turf](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/ReadyforDeliverybyTurf.sql) populates `delivery_auto` table

- [Ready for Coversheet](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/ReadyforCoversheet.sql) populates 'weird_statuses` table

- [Forms Over Turnaround](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/FormsOverTurnaround.sql) populates `turnaround` table

- [Flags by Type](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/FlagsbyType.sql) populates `flags` page
