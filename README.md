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