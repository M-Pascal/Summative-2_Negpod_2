#!/bin/bash

STUDENT_FILE=“students-list_0333.txt”

# Main applicatio loop

while true; do
    echo "1. Create student records"
    echo "2. View all students"
    echo "3. Delete student"
    echo "4. Update student record"
    echo "5. Exit"

    read choice

    if [[ "$choice" == "1" ]]; then
       echo "student email"
read Email

echo "age"
read Age

echo "student ID"
read Student_ID
# Append the student records to the file

echo "$Email,$Age,$Student_ID" >>"$STUDENT_FILE"

echo "Records successfully created!!!"
    elif [[ "$choice" == "2" ]]; then
       #View all students saved in the file

echo "Students record:"
cat "$STUDENT_FILE"
    elif [[ "$choice" == "3" ]]; then
       echo "Enter student_ID to delete"
       read Student_ID

# creating temporary file to move deleted student records

grep "$Student_ID" "$STUDENT_FILE" > temp.txt
mv temp.txt "$STUDENT_FILE"

echo "student record deleted successfully:)"
    elif [[ "$choice" == "4" ]]; then
       
echo "Enter student_ID to update:"
read Student_ID

# file with updated student records

echo "Enter Updated Email"
read Email

echo "Ente Updated age"
read Age

grep -v "$Student_ID" "$STUDENT_FILE" > temp.txt
echo "$Email,$Age,$Student_ID" >> temp.txt
mv temp.txt "$STUDENT_FILE"

echo "Successfully Updated:)!!!"
    elif [[ "$choice" == "5" ]];then
	Exit
    else
	echo "Invalid choice"
    fi

done
