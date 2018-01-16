mkdir -p ~/junitfiles
wget -O ~/junitfiles/junit.jar http://www.csc.calpoly.edu/~phatalsk/public/jar/junit-4.12.jar
wget -O ~/junitfiles/ham.jar http://www.csc.calpoly.edu/~phatalsk/public/jar/hamcrest-core-1.3.jar

wget https://raw.githubusercontent.com/kkevlar/homescripts/master/jrun.sh

echo jrun.sh > "#!/bin/sh"
echo jrun.sh >> "javac -cp ~/junitfiles/*:. *.java"
echo jrun.sh >> "java -cp ~/junitfiles/*:. org.junit.runner.JUnitCore $1"
echo jrun.sh >> "rm *.class"

echo ""
echo "DONE"
