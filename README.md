To get started, clone or download this repo.

To run the application
install docker
and run, within the root directory.
# docker-compose up

if the be(backend) service is unable to connect the db(database) run the following command:
Docker appropriates volumes which may cause issues when storing data between volumes
# docker-compose rm -v
when prompted select y for yes

These are the following services that will be created and linked as needed:
  # fe(frontend) access via localhost:3000
  # be(backend) access via localhost:5000
  # db(database) mysql latest image exposed on port 3306, see set password under enviroment variables
  # phpmyadmin access via localhost:8081
  
