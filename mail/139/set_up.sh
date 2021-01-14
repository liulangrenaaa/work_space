#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_139 ~/.muttrc
cp ./msmtprc_139 ~/.msmtprc
cp ./fetchmailrc_139 ~/.fetchmailrc

chmod 600 ~/.msmtprc

