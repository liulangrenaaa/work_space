#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_hotmail ~/.muttrc
cp ./msmtprc_hotmail ~/.msmtprc
cp ./fetchmailrc_hotmail ~/.fetchmailrc

chmod 600 ~/.msmtprc

