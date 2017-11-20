<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">


    <xsl:variable name="FileA" select="document('almatitles.xml')/list"/>

    <xsl:variable name="FileB" select="doc('hstitles.xml')"/>

    <xsl:key name="LookUpinEmbcyb" match="list/journal" use="eissn | pissn | issn"/>
    <xsl:key name="LookUpinEmbcybTitle" match="list/journal" use="title"/>

    <xsl:template match="/">
        <list>
            <!-- Look up each issn from file A in file B and output matches -->
            <xsl:for-each select="$FileA/journal">
                <xsl:sort select="title"/>
                <xsl:choose>
                    <xsl:when test="issn/text()">
                        <xsl:if test="exists(key('LookUpinEmbcyb', issn, $FileB))">
                            <xsl:copy-of select="."/>
                        </xsl:if>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </list>

    </xsl:template>

</xsl:stylesheet>
