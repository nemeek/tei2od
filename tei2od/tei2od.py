#!/usr/bin/env python3
"""
https://github.com/eea/odfpy/wiki/Introduction
"""

from odf.opendocument import OpenDocumentText
from odf.style import Style, TextProperties
from odf.text import H, P, Span

textdoc = OpenDocumentText()

# Styles
s = textdoc.styles
h1style = Style(name="Heading 1", family="paragraph")
h1style.addElement(TextProperties(attributes={'fontsize':"24pt",'fontweight':"bold" }))
s.addElement(h1style)

# An automatic style
boldstyle = Style(name="Bold", family="text")
boldprop = TextProperties(fontweight="bold")
boldstyle.addElement(boldprop)
textdoc.automaticstyles.addElement(boldstyle)

# Text
h=H(outlinelevel=1, stylename=h1style, text="My first text")
textdoc.text.addElement(h)
p = P(text="Hello world. ")
boldpart = Span(stylename=boldstyle, text="This part is bold. ")
p.addElement(boldpart)
p.addText("This is after bold.")
textdoc.text.addElement(p)

print(textdoc.xml())

textdoc.save("myfirstdocument.odt")

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

if __name__ == '__main__':
    argparser = returnparser()
    main(argparser)
