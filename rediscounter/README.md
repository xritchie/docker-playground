**SETUP THE ENVIRONMENT**
  - mkvirtualenv rediscounter

**ONCE ENVIRONMENT IS SETUP**
  - `workon rediscounter` - will startup the virtual env
  - `python website/app.py` - will start up the web server 

**SETTING UP THE DOCKER ENVIRONMENT**
  - `navigate to `~/rediscounter/website`
  - `sudo service docker status` - make sure docker is running
  - `docker-compose build` - will build the docker environment
  - `docker-compose up` - starts up the docker container
