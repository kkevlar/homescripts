#!/bin/sh

javac -cp ~/junitfiles/*:. *.java
java -cp ~/junitfiles/*:. org.junit.runner.JUnitCore $1
rm *.class

