mkdir -p ~/junitfiles
wget -O ~/junitfiles/junit.jar http://www.csc.calpoly.edu/~phatalsk/public/jar/junit-4.12.jar
wget -O ~/junitfiles/ham.jar http://www.csc.calpoly.edu/~phatalsk/public/jar/hamcrest-core-1.3.jar

wget https://raw.githubusercontent.com/kkevlar/homescripts/master/jrun.sh

echo "#!/bin/sh" > jrun.sh 
echo "javac -cp ~/junitfiles/*:. *.java" >> jrun.sh 
echo "java -cp ~/junitfiles/*:. org.junit.runner.JUnitCore $1" >>jrun.sh 
echo "rm *.class">>jrun.sh 

echo ""
echo "DONE"
