#!/usr/bin/env python3
"""
https://stackoverflow.com/questions/16698935/how-to-transform-an-xml-file-using-xslt-in-python
"""

import lxml.etree as ET

dom = ET.parse(xml_filename)
xslt = ET.parse(xsl_filename)
transform = ET.XSLT(xslt)
newdom = transform(dom)
print(ET.tostring(newdom, pretty_print=True))
