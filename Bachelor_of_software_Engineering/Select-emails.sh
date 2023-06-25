#!/bin/bash

STUDENT_FILE=“students-list_0333.txt”
OUTPUT_FILE=“student-emails.txt”

# Selecting emails and save them to a file

cut -d',' -f1 "$STUDENT_FILE" > "$OUTPUT_FILE"

echo "Emails saved successfully to $OUTPUT_FILE"
