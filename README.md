Description:
  
 * runit-services is a package which provides services for common daemons for use with runit. (http://smarden.org/runit)
 
Usage:

 * This package places all the services in /etc/sv.  You can enable each service by doing the folowing:
    ln -s /etc/sv/<service> /service
 * An example for sshd:
    ln -s /etc/sv/sshd /service

See also:

* https://github.com/rubyists/runit-services
* https://github.com/leahneukirchen/ignite
* https://github.com/void-linux/void-runit
