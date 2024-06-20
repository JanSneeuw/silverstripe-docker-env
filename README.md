## Silverstripe 5 template
This is a template for a Silverstripe 5 project. It includes a basic setup for a Silverstripe 5 project with a docker setup.

### Requirements
- Docker
- Docker-compose
- Composer
- PHP

### Using for new projects
Start by creating a new GitHub repository using this template.

#### Using docker-compose
1. Clone the repository
2. Make sure you create a .env based on the .env.example. Fill out the necessary information.
3. Run `composer install`
4. Run `docker-compose up -d`
5. Now you should be able to reach the web project at "http://localhost".


### Using for existing projects
For existing projects, simply copy the docker-compose.yml into the root of your project. Assuming you have a .env file, you can simply run `docker-compose up -d` to start the project.

### Running Services
After running `docker-compose up -d` you should have the following services running:
#### Web
The web service is running the PHP server. You can reach the web server at "http://localhost".
#### Database
The database service is running a MySQL server. You can reach the database server at "localhost:3306".

Default credentials:
- Username: root
- Password: root
- Database: silverstripe

#### PHPMyAdmin
The PHPMyAdmin service is running a PHPMyAdmin server. You can reach the PHPMyAdmin server at "http://localhost:8081".
#### Mailpit
The Mailpit service is running a MailPit server. You can send mails through the mailing server, which is reachable at 'localhost:1025'. Every mail sent using this server will be caught (so it won't be sent to any real email). To see the mails, you can reach the web interface at 'http://localhost:8025'

### Setting up XDebug
#### PHPStorm
1. Go to File > Settings (on Windows/Linux) or PhpStorm > Preferences (on macOS).
2. Navigate to Languages & Frameworks > PHP.
3. Click the ... button next to the CLI Interpreter field.
4. Click the + button to add a new interpreter.
5. Select From Docker, Vagrant, VM, Remote....
6. Choose Docker Compose.
7. Select your Docker Compose configuration file and the service (e.g., web).
8. Click OK.
9. Go to Languages & Frameworks > PHP > Servers.
10. Click the + button to add a new server.
11. Name: docker-web (or any name you prefer).
12. Host: localhost.
13. Port: 80.
14. Use path mappings to map your local project path to the path inside the container (/var/www/html).
15. Click OK.
16. Go to Run > Edit Configurations.
17. Click the + button and select PHP Remote Debug.
18. Name your configuration, for example, XDebug Docker.
19. In the Servers dropdown, select the server you configured (docker-web).
20. Set the IDE key to 'docker'.
21. Click OK.
22. By clicking on debug you can now start debugging.