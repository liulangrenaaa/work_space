#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_163 ~/.muttrc
cp ./msmtprc_163 ~/.msmtprc
cp ./fetchmailrc_163 ~/.fetchmailrc

chmod 600 ~/.msmtprc

