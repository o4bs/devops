# devops
Instructions related to the devops.

## [Installation](Installation.md)
The tools to install at our servers.


## [Security](Security.md)
Some security consideration.


## [Scripts](scripts)
Useful scripts for the setup.


### start scripts
* [mongo express](scripts/start_mongo_express.sh): Will start a mongo web UI and listen to http://localhost:8081.


### cron files

Put the file under `/etc/cron.d/`.

* [mtm_deploy](scripts/mtm_deploy): deploy latest code 
* [mongo_backup](scripts/mongo_backup): backup mongo db data every day.

