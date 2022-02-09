set -e

CLASSPATH=".;lib\junit-4.13.2.jar;lib\hamcrest-core-1.3.jar"

javac -cp $CLASSPATH MarkdownParseTest.java

# if [ $? != 0 ]
# then 
# 	echo "Exiting early"
# 	exit 1
# fi

echo $?


java -cp $CLASSPATH org.junit.runner.JUnitCore MarkdownParseTest
