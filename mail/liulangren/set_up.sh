#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_liulangren ~/.muttrc
cp ./msmtprc_liulangren ~/.msmtprc
cp ./fetchmailrc_liulangren ~/.fetchmailrc

chmod 600 ~/.msmtprc

