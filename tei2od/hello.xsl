<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <office:document xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" office:version="1.2" office:mimetype="application/vnd.oasis.opendocument.text">
      <office:meta>
	<meta:generator>ODFPY/1.4.1</meta:generator>
      </office:meta>
      <office:scripts/>
      <office:font-face-decls/>
      <office:settings/>
      <office:styles>
	<style:style style:name="Heading_20_1" style:family="paragraph" style:display-name="Heading 1">
	  <style:text-properties fo:font-size="24pt" fo:font-weight="bold"/>
	</style:style>
      </office:styles>
      <office:automatic-styles>
	<style:style style:name="Bold" style:family="text" style:display-name="Bold">
	  <style:text-properties fo:font-weight="bold"/>
	</style:style>
      </office:automatic-styles>
      <office:master-styles/>
      <office:body>
	<office:text>
	  <text:h text:outline-level="1" text:style-name="Heading_20_1"><xsl:value-of select="body/h1"/></text:h>
	  <text:p><xsl:value-of select="body/p"/></text:p>
	</office:text>
      </office:body>
    </office:document>
  </xsl:template>
</xsl:stylesheet>
