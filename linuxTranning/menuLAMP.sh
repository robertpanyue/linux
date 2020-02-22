RED='\033[0;41;30m'

one() {
	sudo apt update
	sudo apt install -y apache2
}

two() {
	sudo apt update
	sudo apt install -y mysql-server
}

three() {
	sudo apt update
	sudo apt install -y openjdk-8-jdk
}

four() {
	sudo apt update
	sudo curl -O http://apache-mirror.8birdsvideo.com/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
	sudo mkdir /opt/tomcat
	sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1
}

show_menus(){
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Install Apache"
	echo "2. Install Mysql"
	echo "3. Install Java 8"
	echo "4. Install Apache Tomcat"
	echo "5. Exit"
}

read_options(){
	local choice
	read -p "Enter choice[1-5]" choice
	case $choice in
		1) one;;
		2) two;;
		3) three;;
		4) four;;
		5) exit 0;;
		*) echo -e "${RED} ERROR" && sleep 2
	esac
}


while true
do 
	show_menus
	read_options
done
