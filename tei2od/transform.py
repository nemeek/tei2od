#!/usr/bin/env python3
"""
https://stackoverflow.com/questions/16698935/how-to-transform-an-xml-file-using-xslt-in-python
"""

import argparse
import lxml.etree as ET

# dom = ET.parse(xml_filename)
# xslt = ET.parse(xsl_filename)
# transform = ET.XSLT(xslt)
# newdom = transform(dom)
# print(ET.tostring(newdom, pretty_print=True))

def returnparser():
    parser = argparse.ArgumentParser(
        description='transform xml according to xsl'
    )
    parser.add_argument('infile')
    parser.add_argument('-s', '--style')
    # parser.add_argument('outfile')

    return parser

def main(p: argparse.ArgumentParser):
    args = p.parse_args()
    infile = args.infile
    dom = ET.parse(infile)
    xslt = ET.parse(args.style)
    transform = ET.XSLT(xslt)
    newdom = transform(dom)
    print(ET.tostring(newdom, pretty_print=True))


if __name__ == '__main__':
    argparser = returnparser()
    main(argparser)
