#!/usr/bin/env python3

"""
Write odt as xml
"""

import argparse
from lxml import etree

from odf.opendocument import load

def returnparser():
    parser = argparse.ArgumentParser(
        description='odt files to xml'
    )
    parser.add_argument('infile')
    # parser.add_argument('outfile')

    return parser

def main(p: argparse.ArgumentParser):
    args = p.parse_args()
    infile = args.infile
    doc = load(infile)
    ddoc = etree.fromstring(doc.xml())
    dddoc = etree.tostring(ddoc, pretty_print=True, encoding="unicode")
    print(dddoc)

if __name__ == '__main__':
    argparser = returnparser()
    main(argparser)