Scheduled Jobs
--
[Count of Forms by QC Visual Review Response](https://github.com/StateVoicesNational/IEOD-VR/blob/main/QualityControl/CountFormsbyQCResponse.sql)

[Scheduled Civis Job](https://platform.civisanalytics.com/spa/#/scripts/sql/150897467)
Runs Monday at 10:15 am ET overwriting a shared google sheet for the Arizona Program Manager and TOT contact. This file
is being used as a means to track all visual review responses on all forms for the state tenant. Parameters set the script to pull from program start Jan.1st 2022 in Arizona.


[Scheduled Dashboard Update Job](https://platform.civisanalytics.com/spa/#/exports/154571384)

- [FlagsbyType.sql](https://github.com/StateVoicesNational/IEOD-VR/blob/main/QualityControl/FlagsbyType.sql) populates the `flags`

- [Ready for Delivery by Turf](https://github.com/StateVoicesNational/ieod-vr/blob/main/QCAnalysis/ReadyforDeliverybyTurf.sql) populates `delivery_auto`

- [Ready for Coversheet](https://github.com/StateVoicesNational/ieod-vr/blob/main/QCAnalysis/ReadyforCoversheet.sql) populates 'weird_statuses`

- [Forms Over Turnaround](https://github.com/StateVoicesNational/ieod-vr/blob/main/QCAnalysis/FormsOverTurnaround.sql) populates `turnaround`

- [Flags by Type](https://github.com/StateVoicesNational/ieod-vr/blob/9a9307cf99ddda3e42ec94064c67b2e4b0da936f/QCAnalysis/FlagsbyType.sql) populates `flags`

- [Vidado Pipeline Report](https://platform.civisanalytics.com/spa/#/exports/173010992) populates a separate feeder sheet: [Chorus Pupeline Report (Automated)](https://docs.google.com/spreadsheets/d/1u6qt8zXtDZGg5nx5WIMdikNtfjlraEXZ-LdKHdqsAJ0/edit#gid=0)
