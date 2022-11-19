source vars.txt

yum --help > /dev/null 2> /dev/null
if [ $? -eq 0 ]
then
  if grep -q -i "release 6" /etc/redhat-release
  then
    echo "############################################################"
    echo "Setup Running on Centos 6."
    echo "############################################################"
    echo
    echo

    SVCFILE=centos6-svcfile

    echo "############################################################"
    echo "Installing Java"
    echo "############################################################"
	yum install epel-release -y
    yum install java-1.8.0-openjdk.x86_64 wget -y
    echo
    echo

    echo "############################################################"
    echo "Setting up Users & Group"
    echo "############################################################"
     groupadd tomcat
     useradd -M -s /bin/nologin -g tomcat -d $TOMCAT_HOME tomcat
    echo
    echo

    echo "############################################################"
    echo "Downloading tomcat..."
    echo "############################################################"
    wget $DOWNLOAD_URL
    mkdir -p $TOMCAT_HOME
    tar xf apache-tomcat-8*tar.gz -C $TOMCAT_HOME --strip-components=1
    echo
    echo

    echo "############################################################"
    echo "Setting up Permissions."
    echo "############################################################"
    chmod -R g+r $TOMCAT_HOME/conf
    chown tomcat:tomcat -R $TOMCAT_HOME/*
    echo
    echo

    echo "############################################################"
    echo "Setting up Startup scripts"
    echo "############################################################"
    cat $SVCFILE > /etc/init.d/tomcat
    chmod 755 /etc/init.d/tomcat
    sleep 5
    chkconfig --add tomcat
    sleep 5
    echo
    echo

    echo "############################################################"
    echo "Setting Tomcat Service"
    echo "############################################################"
    service tomcat start
    sleep 5
    echo
    echo

    service tomcat status
    sleep 5
    echo "############################################################"
    echo "Enable Tomcat Service"
    echo "############################################################"
    echo
    echo

    chkconfig tomcat on
    echo
    echo

  else
echo "############################################################"
    echo "Setup Running on Centos 7."
    echo "############################################################"

    SVCFILE=centos7-svcfile

    echo "############################################################"
    echo "Installing Java"
    echo "############################################################"
    
	yum install epel-release -y
    yum install java-1.8.0-openjdk.x86_64 wget -y
	echo
    echo

    echo "############################################################"
    echo "Setting up Users & Group"
    echo "############################################################"
     groupadd tomcat
     useradd -M -s /bin/nologin -g tomcat -d $TOMCAT_HOME tomcat
	echo
    echo

    echo "############################################################"
    echo "Downloading tomcat..."
    echo "############################################################"
    wget $DOWNLOAD_URL
     mkdir -p $TOMCAT_HOME
     tar xf apache-tomcat-8*tar.gz -C $TOMCAT_HOME --strip-components=1
	echo
    echo

    echo "############################################################"
    echo "Setting up Permissions."
    echo "############################################################"
    chmod -R g+r $TOMCAT_HOME/conf
    chown tomcat:tomcat -R $TOMCAT_HOME/*
	echo
	echo
	echo "############################################################"
    echo "Setting up Startup scripts"
    echo "############################################################"
    cat $SVCFILE > /etc/systemd/system/tomcat.service
    chmod a+x /etc/systemd/system/tomcat.service
    sleep 5
	
    systemctl daemon-reload
    sleep 5
    echo
    echo

    echo "############################################################"
    echo "Starting Tomcat Service"
    echo "############################################################" 
	systemctl start tomcat
    sleep 5
	systemctl status tomcat
    sleep 5
	
    echo
    echo

    echo "############################################################"
    echo "Enabling Tomcat Service"
    echo "############################################################"    
	systemctl enable tomcat
  fi
else
  a=$(lsb_release -r)
  if echo $a | grep -q -i "14"
  then
    echo "############################################################"
    echo "Setup Running on UBUNTU 14."
    echo "############################################################"

    SVCFILE=centos6-svcfile

    echo "############################################################"
    echo "Installing Java"
    echo "############################################################"
    add-apt-repository ppa:openjdk-r/ppa
    apt update
    apt install openjdk-8-jdk wget -y
    echo
    echo

    echo "############################################################"
    echo "Setting up Users & Group"
    echo "############################################################"
    groupadd tomcat
    useradd -M -s /bin/nologin -g tomcat -d $TOMCAT_HOME tomcat
    echo
    echo

    echo "############################################################"
    echo "Downloading tomcat..."
    echo "############################################################"
    wget $DOWNLOAD_URL
    mkdir -p $TOMCAT_HOME
    tar xf apache-tomcat-8*tar.gz -C $TOMCAT_HOME --strip-components=1
    echo
    echo

    echo "############################################################"
    echo "Setting up Permissions."
    echo "############################################################"
    chmod -R g+r $TOMCAT_HOME/conf
    chown tomcat:tomcat -R $TOMCAT_HOME/*
    echo
    echo

    echo "############################################################"
    echo "Setting up Startup scripts"
    echo "############################################################"
    cat $SVCFILE > /etc/init.d/tomcat
    chmod 755 /etc/init.d/tomcat
    sleep 5
    echo
    echo

    echo "############################################################"
    echo "Setting Tomcat Service"
    echo "############################################################"
    update-rc.d tomcat defaults
    sleep 5
    echo
    echo

    echo "############################################################"
    echo "Starting Tomcat Service"
    echo "############################################################"
    service tomcat start
    sleep 5
    echo
    echo

    service tomcat status
    sleep 5
    echo
    echo

    echo "############################################################"
    echo "Enable Tomcat Service"
    echo "############################################################"
    update-rc.d tomcat enable
    echo
    echo

  else
    echo "############################################################"
    echo "Setup Running on UBUNTU 16."
    echo "############################################################"

    SVCFILE=ubuntu16-svcfile

    echo "############################################################"
    echo "Installing Java"
    echo "############################################################"
    apt update 
    apt install openjdk-8-jdk wget -y
	echo
    echo

    echo "############################################################"
    echo "Setting up Users & Group"
    echo "############################################################"
     groupadd tomcat
     useradd -M -s /bin/nologin -g tomcat -d $TOMCAT_HOME tomcat
	echo
    echo

    echo "############################################################"
    echo "Downloading tomcat..."
    echo "############################################################"
    wget $DOWNLOAD_URL
     mkdir -p $TOMCAT_HOME
     tar xf apache-tomcat-8*tar.gz -C $TOMCAT_HOME --strip-components=1
	echo
    echo

    echo "############################################################"
    echo "Setting up Permissions."
    echo "############################################################"
     chmod -R g+r $TOMCAT_HOME/conf
     chown tomcat:tomcat -R $TOMCAT_HOME/*
	echo
	echo
	echo "############################################################"
    echo "Setting up Startup scripts"
    echo "############################################################"
     cat $SVCFILE > /etc/systemd/system/tomcat.service
     chmod a+x /etc/systemd/system/tomcat.service
    sleep 5
	
     systemctl daemon-reload
    sleep 5
    echo
    echo

    echo "############################################################"
    echo "Starting Tomcat Service"
    echo "############################################################" 
	 systemctl start tomcat
    sleep 5
	 systemctl status tomcat
    sleep 5
	
    echo
    echo

    echo "############################################################"
    echo "Enabling Tomcat Service"
    echo "############################################################"    
	 systemctl enable tomcat
  fi

fi

