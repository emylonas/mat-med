<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
        xmlns:t="http://www.tei-c.org/ns/1.0"
        xmlns="http://www.tei-c.org/ns/1.0"
        exclude-result-prefixes="xs xd t"
        version="2.0">
        <xd:doc scope="stylesheet">
            <xd:desc>
                <xd:p><xd:b>Created on:</xd:b> May 25, 2021</xd:p>
                <xd:p><xd:b>Author:</xd:b> elli</xd:p>
                <xd:p>Clean up Michiele document: 
                    <xd:ul>
                        
                        <xd:li>put @xml:id in notes = plant-num-note-num</xd:li>
                        <xd:li>put ref to xml:id in ptr/@target</xd:li>
                    </xd:ul> </xd:p>
            </xd:desc>
        </xd:doc>
        
        <xsl:output method="xml" indent="no" exclude-result-prefixes="xs xd t"/>
        
        <xsl:template match="t:note">
            <xsl:copy>
                <xsl:attribute name="xml:id" select="concat(ancestor::t:div[@type='plant']/@xml:id,@n)"/>
                <xsl:apply-templates select="node()|@*"/>
            </xsl:copy>
        </xsl:template>
        
        <xsl:template match="t:ptr">
            <xsl:element name="ptr">
                <xsl:attribute name="target" select="concat('#',ancestor::t:div[@type='plant']/@xml:id,@target)"/>
            </xsl:element>
        </xsl:template>
        
        
        <xsl:template match="@*|node()" >
            <xsl:copy copy-namespaces="no">
                <xsl:apply-templates select="@*|node()"/>
            </xsl:copy>
        </xsl:template>
    </xsl:stylesheet>