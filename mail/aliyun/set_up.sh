#!/bin/bash


mv ~/.muttrc /tmp/
mv ~/.msmtprc /tmp/
mv ~/.fetchmailrc /tmp/

cp ./muttrc_aliyun ~/.muttrc
cp ./msmtprc_aliyun ~/.msmtprc
cp ./fetchmailrc_aliyun ~/.fetchmailrc

chmod 600 ~/.msmtprc

