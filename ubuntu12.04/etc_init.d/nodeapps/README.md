Configuring A Node App as A Service
==============================================

Configure a node app as a service


    $ cp config_node_app app_name
    $ sudo chmod a+x app_name

    $ sudo ln -s /path/to/app+name /etc/init.d/app_name
    $ ls /etc/init.d

    $ sudo service app_name [start/stop/restart]
