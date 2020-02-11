#!/bin/bash
echo "$USER"
echo "Enter recepient email:"
read remail
echo "Enter title of the email:"
read subject
echo "Enter email message:"
read body

cat <<EOF > email.txt
Subject: $subject
$body
EOF
echo "Sending email to $remail"
sendmail "$remail" < email.txt
echo "Email sent"
