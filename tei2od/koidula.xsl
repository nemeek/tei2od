<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
		xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
		xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
		xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
		xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0">

  <xsl:template match="/">
    <office:document  office:version="1.2" office:mimetype="application/vnd.oasis.opendocument.text">
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
	<style:style style:name="Footnote" style:family="paragraph" style:parent-style-name="Standard" style:class="extra">
      <style:paragraph-properties fo:margin-left="0.598cm" fo:margin-right="0cm" fo:text-indent="-0.598cm" style:auto-text-indent="false" text:number-lines="false" text:line-number="0"/>
      <style:text-properties fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
	</style:style>
	    <style:style style:name="eestikeelne" style:family="paragraph" style:parent-style-name="Standard">
      <style:text-properties fo:font-style="italic"/>
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
	  <xsl:apply-templates/>
	</office:text>
      </office:body>
    </office:document>
  </xsl:template>
  <xsl:template match="span">
    <text:span text:style-name="Bold">
      <xsl:apply-templates/>
    </text:span>
  </xsl:template>
  <xsl:template match="p">
    <xsl:choose>
      <xsl:when test="not(i)">
	<text:p>
	  <xsl:apply-templates/>
	</text:p>
      </xsl:when>
      <xsl:when test="i">
	<text:p text:style-name="eestikeelne">
	  <xsl:apply-templates/>
	</text:p>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="h2">
    <text:h text:style-name="Heading_20_2" text:outline-level="2">
      <xsl:apply-templates/>
    </text:h>
  </xsl:template>
    
</xsl:stylesheet>
