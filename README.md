# magento2-php7-nginx-docker

## Build

`docker build -ti magento2-php7-nginx`

## Run
### Example run instruction

`docker run -d --name container_hostname -h hostname -v ~/Projects/project/:/var/www/html -p 8080:80 magento2-php7-nginx`

### Install magento
The host must have php nd composed installed.

```
git clone https://github.com/magento/magento2.git ~/Projects/project
cd ~/Projects/project
git checkout 2.0
composer install
```
