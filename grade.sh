CPATH='".\;..\lib\hamcrest-core-1.3.jar\;..\lib\junit-4.13.2.jar"'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point
PATH=' ./grading-area/ListExamples.java'

if [[ -f "./student-submission/ListExamples.java" ]]
then
    echo "Hello"
    # cp student-submission/ListExamples.java grading-area
    "C:\Program Files\Java\jdk-17.0.5\bin\javac" -cp $CPATH ./student-submission/ListExamples.java
    echo "It worked!"
else
    echo "Invalid file"
fi



# Then, add here code to compile and run, and do any post-processing of the
# tests
