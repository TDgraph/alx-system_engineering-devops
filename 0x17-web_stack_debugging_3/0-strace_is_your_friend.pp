# the Puppet manifest fixes the web stack: Apache is returning a 200
# editing the mistyped .phpp to php in the settings.php file

exec { 'fix-wordpress-server-erroe';
    command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    path    => '/usr/local/bin/:/bin/',
}
