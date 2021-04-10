#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/
mv ~/.procmailrc /tmp/

cp ./muttrc_163 ~/.muttrc
cp ./msmtprc_163 ~/.msmtprc
cp ./fetchmailrc_163 ~/.fetchmailrc
cp ./procmailrc_163 ~/.procmailrc

chmod 600 ~/.msmtprc

