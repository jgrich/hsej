<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns:axsl="http://www.w3.org/1999/XSL/TransformAlias"
    version="2.0">
    
    <!--used Find and Replace on HSinAlma.xml to replace last 4 digits of mmsid from 1408 to 1452-->

    <xsl:output indent="yes" method="html" use-character-maps="m1"/>
    
    <xsl:character-map name="m1">
        <xsl:output-character character="&#129;" string=" "/>
        <xsl:output-character character="&#141;" string=" "/>
        <xsl:output-character character="&#143;" string=" "/>
        <xsl:output-character character="&#144;" string=" "/>
        <xsl:output-character character="&#157;" string=" "/>
    </xsl:character-map>
    
    <xsl:variable name="linka" select="'http://alliance-primo.hosted.exlibrisgroup.com/primo_library/libweb/action/search.do?fn=search&amp;ct=search&amp;initialSearch=true&amp;mode=Advanced&amp;tab=default_tab&amp;indx=1&amp;dum=true&amp;srt=rank&amp;vid=UW&amp;frbg=&amp;tb=t&amp;vl%28freeText0%29='"/>
    <xsl:variable name="linkb" select="'&amp;vl%281032993216UI4%29=journals&amp;Submit=Search'"/>
    
    
    <xsl:template match="/">
        <html>
         
            <head>Health Sciences eJournals</head>
  
            <body>
                <xsl:for-each-group select="list/journal" group-by="mmsid"> 
                
                    <xsl:for-each select="current-group()[1]">
                   <xsl:sort select="current-group()/list/journal/title"/>
                               <li>    
                        <xsl:element name="a">
                            <xsl:attribute name="target" select="'_blank'"/>
                            <xsl:attribute name="href" select="concat($linka,./mmsid,$linkb)"/>
                            <xsl:value-of select="./title"/>
                            
                        </xsl:element>
                                   
                        
                    </li>
                    
                </xsl:for-each>
                </xsl:for-each-group>
             
            </body>
            
        </html>
    </xsl:template>

    
</xsl:stylesheet>