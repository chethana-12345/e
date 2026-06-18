java --version
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo apt install firefox
sudo snap install firefox

-- 
http://localhost:8080
installed plugins
     maven integration plugin
     ssh agent plugin
create freestyle project
      source code management
        git
          url
          branch */main
       build steps
          clean package
--
sudo apt install maven
mvn --version
//create maven project
mvn archetype:generate -DgroupId=com.example -DartifactId=demo3 -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
cd demo3
ls
mvn package
ls target/*.jar
readline -f target/*.jar
cd ~
nano deployarti.yml
{
name:deploy artifact build by jenkins
hosts:localhost
become:true
tasks:
     name:copy jar to deployment folder
     copy:
          scr:/home/neha/demo3/target/demo3-1.0-SNAPSHOT.jar
          dest:/opt/deploy/demo3.jar
}
ansible-playbook deployarti.yml --ask-become-pass
//give password

