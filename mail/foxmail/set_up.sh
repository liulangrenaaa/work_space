#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_foxmail ~/.muttrc
cp ./msmtprc_foxmail ~/.msmtprc
cp ./fetchmailrc_foxmail ~/.fetchmailrc

chmod 600 ~/.msmtprc

