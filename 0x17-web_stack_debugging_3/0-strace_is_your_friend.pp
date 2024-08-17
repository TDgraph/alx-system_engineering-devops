# A puppet that fixes a wordpress site changing the error from 500 to 200
# editing the mistyped .phpp to php in the settings.php file

exec { 'fix-wordpress-server-erroe';
    command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    path => '/usr/bin/:/bin/',
}
