javac -cp ~/junitfiles/*:. *.java
java -cp ~/junitfiles/*:. org.junit.runner.JUnitCore TestCases
rm *.class

