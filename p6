integration
 freestyle project
 clean install
 pom (location)
 build now

 ci pipline
 pipeline{
 agent any
 tool{
 maven'MAVEn_HOME'
 }
 stages{
 stages('build'){
 steps{
 bat'maven clean install'}}}}

 jenkinsfile

 //github steps

 
