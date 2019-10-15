Description:
  
 * runit-services is a package which provides services for common daemons for use with runit. (http://smarden.org/runit)
 
Usage:

 * This package places all the services in /etc/sv.  You can enable each service by doing the folowing:
    ln -s /etc/sv/<service> /service
 * An example for sshd:
    ln -s /etc/sv/sshd /service

Notes:

 * Logging is done via runit's svlod or via syslog, depending on service.
    [tai64nlocal](https://cr.yp.to/daemontools/tai64nlocal.html) from the daemontools package
 is recommended for checking log timestamps.
 * Some one shot services depend on the [pause](https://github.com/void-linux/void-runit/blob/master/pause.c) program.


See also:

* https://github.com/rubyists/runit-services
* https://github.com/leahneukirchen/ignite
* https://github.com/void-linux/void-runit
* https://github.com/void-linux/void-packages  (individual srcpkgs)
* http://smarden.org/runit1/runscripts.html
* https://github.com/apayne/supervision-scripts
