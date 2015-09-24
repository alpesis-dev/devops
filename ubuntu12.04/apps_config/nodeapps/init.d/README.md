Configuring A Node App As A Service
==============================================

Configure a node app as a service


    $ cp node_app_config app_name
    $ sudo vim app_name                # update the app paths, save and exit
    $ sudo chmod a+x app_name

    $ sudo ln -s /path/to/app+name /etc/init.d/app_name
    $ ls /etc/init.d

    $ sudo service app_name [start/stop/restart]



update `config_node_app`


    # An application name to display in echo text.
    # NAME="My Application"
    # The full path to the directory containing the node and forever binaries.
    # NODE_BIN_DIR="/usr/local/node/bin"
    # Set the NODE_PATH to the Node.js main node_modules directory.
    # NODE_PATH="/usr/local/lib/node_modules"
    # The application startup Javascript file path.
    # APPLICATION_PATH="/home/user/my-application/start-my-application.js"
    # Process ID file path.
    # PIDFILE="/var/run/my-application.pid"
    # Log file path.
    # LOGFILE="/var/log/my-application.log"
    # Forever settings to prevent the application spinning if it fails on launch.
    # MIN_UPTIME="5000"
    # SPIN_SLEEP_TIME="2000"

    NAME=""
    NODE_BIN_DIR=""
    NODE_PATH=""
    APPLICATION_PATH=""
    PIDFILE=""
    LOGFILE=""
    MIN_UPTIME=""
    SPIN_SLEEP_TIME=""


