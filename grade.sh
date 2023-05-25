# PATH=' ./grading-area/ListExamples.java'
rm -rf student-submission
rm -rf grading-area
# if [[ -f ./student-submission/ListExamples.java ]]

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point
path=' ./grading-area/ListExamples.java'

if [ -f ./student-submission/ListExamples.java ]
then
        cp ./TestListExamples.java grading-area
        cp -r ./lib grading-area
        cp student-submission/ListExamples.java grading-area
        javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" *.java
        java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore TestListExamples
        echo "It worked!"
else
        echo "Invalid file"
fi