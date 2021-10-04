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
To run composer command use:  
  
`docker run --rm -it -v $(pwd):/app -w /app/code $(basename $(pwd) | tr [:upper:] [:lower:])_php composer <command>`
 
Or you can create an alias:  
  
`alias dc="docker run --rm -it -v $(pwd):/app -w /app/code $(basename $(pwd) | tr [:upper:] [:lower:])_php composer"`  
  
Now you can run it with command: `dc <command>`
    
For example, to see version of composer installed run this command: `dc --version`
