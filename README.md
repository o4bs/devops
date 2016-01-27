# devops
Instructions related to the devops.

## Installation
The tools to install at our servers.

See [Installation](Installation.md).


## Security
Some security consideration.

See [Security](Security.md).


## Scripts
Useful scripts for the setup.

See files under the `scripts` directory.

[start mongo express](scripts/start_mongo_express.sh): Will start a mongo web UI and listen to http://localhost:8081.


### cron files

Put under /etc/cron.d/

[mtm_deploy](scripts/mtm_deploy): deploy latest code 

[mongo_backup](scripts/mongo_backup): backup mongo db data every day.

