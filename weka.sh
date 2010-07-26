#!/bin/bash

export WEKA_HOME=/home/cpatrick/Dropbox/wekafiles
CP=${CLASSPATH}:/home/cpatrick/Dropbox/wekafiles/weka.jar:/usr/share/java/mysql-connector-java.jar
java -classpath ${CP} weka.gui.GUIChooser