yum install -y httpd
systemctl enable httpd
systemctl start httpd

yum -y install epel-release yum-utils
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager -y --enable remi-php72
yum install -y php72 php72-php-fpm php72-php-mysqlnd php72-php-opcache php72-php-xml php72-php-xmlrpc php72-php-gd php72-php-mbstring php72-php-json
ln -s /usr/bin/php72 /usr/bin/php
yum install -y mod_php php-mbstring

yum install -y mariadb mariadb-server
systemctl enable mariadb.service
systemctl start mariadb
/usr/bin/mysql_secure_installation
systemctl restart mariadb

echo "done"
