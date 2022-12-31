This folder contains original queries to monitor and uplift anomolies in our quality control pipeline. There are two projects: an automated weekly email to a Program Manager, informing them of the topline issues emerging from their state, and a National Dashboard for a small team of National data staff to pick up on emerging to-do's across all 10 states.

These queries and projects were authored by Amber Medina, owner of this repository. Please direct any inqueries to [alouiseme@icloud.com](mailto:alouiseme@icloud.com?subject=GitRepo%20QCAnalysis)

Scheduled Jobs
--
[Email: Count of Forms by QC Visual Review Response](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/CountFormsbyQCResponse.sql)

[Scheduled Civis Job](https://platform.civisanalytics.com/spa/#/scripts/sql/150897467)
Runs Monday at 10:15 am ET overwriting a shared google sheet for the Program Manager and point of contact. This file
is being used as a means to track all responses on all forms by partner for the state tenant. Parameters set the script to pull from program start Jan.1st 2022.


[Google Data Studio Update: Quality Control Dashboard Queries](https://platform.civisanalytics.com/users/sign_in/#/exports/154571384)

These queries run in parallel at the top of every hour, refreshing the Google Data Studio dashboard for National Program staff.

- [FlagsbyType.sql](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/FlagsbyType.sql) populates the `flags` table

- [Ready for Delivery by Turf](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/ReadyforDeliverybyTurf.sql) populates `delivery_auto` table

- [Ready for Coversheet](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/ReadyforCoversheet.sql) populates 'weird_statuses` table

- [Forms Over Turnaround](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/FormsOverTurnaround.sql) populates `turnaround` table

- [Flags by Type](https://github.com/bigkidsonly/SampleQueries/blob/main/QCAnalysis/FlagsbyType.sql) populates `flags` page
