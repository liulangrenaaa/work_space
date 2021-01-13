#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_gmail ~/.muttrc
cp ./msmtprc_gmail ~/.msmtprc
cp ./fetchmailrc_gmail ~/.fetchmailrc

chmod 600 ~/.msmtprc

