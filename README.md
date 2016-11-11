# magento2-php7-nginx-docker

## Build

`docker build -ti magento2-php7-nginx`

## Run
### Example run instruction

`docker run -d --name vcc -h virtualcabinet.com -v ~/Projects/vcc/:/var/www/html -p 8080:80 vcc`
