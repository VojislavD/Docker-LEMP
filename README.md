# Docker-LEMP

## About
Docker setup for basic LEMP stack - Linux, Nginx, MySQL, PHP, Composer.
### Versions
<ul>
  <li>Nginx - 1.20.1</li>
  <li>MySQL - 8.0.26</li>
  <li>PHP - 8.0</li>
  <li>Composer - Latest version</li>
</ul>
  
## Requirements

Install <a href="https://www.docker.com/">Docker</a>.

## Usage

Navigate to the project folder and run `docker-compose up`.
  
Visit page http://localhost:3000

### Composer
To run composer command use: `docker run --rm -it -v $(pwd):/app -w /app/app <PHP_IMAGE_NAME> composer <command>`
  
Or you can create an alias: `alias dr="docker run --rm -it -v $(pwd):/app -w /app/app"`  
  
Now you can run it with command: `dr <PHP_IMAGE_NAME> composer <command>`
    
For example, to see version of composer installed run this command: `dr <PHP_IMAGE_NAME> composer --version`

#### Note
<PHP_IMAGE_NAME> with default configuration will be <FOLDER_NAME>_php.  
For example: `docker-lemp_php`