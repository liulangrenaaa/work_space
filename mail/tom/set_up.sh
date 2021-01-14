#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_tom ~/.muttrc
cp ./msmtprc_tom ~/.msmtprc
cp ./fetchmailrc_tom ~/.fetchmailrc

chmod 600 ~/.msmtprc

