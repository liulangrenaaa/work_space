#!/usr/bin/env python

#parse the linux conpile .config file for
# "defines": [
# ],
# vscode file

_DEFAULT_INPUT = '/home/ubuntu/myspace/pixel6/out/android-gs-pixel-5.10/private/gs-google/.config'
_DEFAULT_OUTPUT = '/tmp/out.txt'

FILE_HEAD = '"defines": [\n'
FILE_END  = '    ],\n'

def main():
        infile = open(_DEFAULT_INPUT, "r")
        outfile = open(_DEFAULT_OUTPUT, "w")
        inlist = []
        config_list = []

        outfile.write(FILE_HEAD)
        for line in infile:
                inlist.append(line)

        for i, line_content in enumerate(inlist):
                if not line_content.startswith("#"):
                        if not line_content in ['\n', '\r\n']:
                                config_list.append(line_content)
                                # print ("line: ", i, "string: ", line_content)

        for i, line_content in enumerate(config_list):
                x = line_content.split("=", 1)
                # print x
                # print x[0], x[1]
                newline = '     "' + x[0] + '",\n'
                # print newline
                outfile.write(newline)

        outfile.write(FILE_END)

        infile.close()
        outfile.close()

if __name__ == '__main__':
    main()