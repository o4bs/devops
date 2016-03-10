# devops
Instructions related to the devops.


## Servers
### Product env
Host: [o4bs.com](o4bs.com)

Product server, no one should make change unless allowed from admin.

Currently, the deployed code is from [master](https://github.com/o4bs/mtm/tree/master) branch.

New release should be tested fully under the Dev env, and be deployed manually.

### Dev env
Host: [test.o4bs.com](test.o4bs.com)

Test env, user o4bs has the code under his home.

Currently, the deployed code is from [dev](https://github.com/o4bs/mtm/tree/dev) branch.

Latest code from dev branch will be pulled and deployed automatically every hour.

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

