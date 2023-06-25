#!/bin/bash

STUDENT_FILE=“students-list_0333.txt”

#creaating student records

echo "student email"
read Email

echo "age"
read Age

echo "student ID"
read Student_ID

# Append the student records to the file

echo "$Email,$Age,$Student_ID" >>"$STUDENT_FILE"

echo "Records successfully created!!!"

#View all students saved in the file

echo "Students record:"
cat "$STUDENT_FILE"

# To delete student record using student ID

echo "Enter student_ID to delete"
read Student_ID

# creating temporary file to move deleted student records

grep "$Student_ID" "$STUDENT_FILE" > temp.txt
mv temp.txt "$STUDENT_FILE"

echo "student record deleted successfully:)"

# Update the student record in the list by using student ID

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

# main application loop

while :; do
    echo "1. Create student records"
    echo "2. View all students"
    echo "3. Delete student"
    echo "4. Update student record"
    echo "5. Exit"

    read -r choice

    if [[ "$choice" == "1" ]]; then
	Create_student
    elif [[ "$choice" == "2" ]]; then
	View_students
    elif [[ "$choice" == "3" ]]; then
	Delete_student
    elif [[ "$choice" == "4" ]]; then
	Update_student
    elif [[ "$choice" == "5" ]];then
	Exit
    else
	echo "Invalid choice"
    fi

done
