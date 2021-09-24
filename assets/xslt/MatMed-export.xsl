<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:t="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs xd t" version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Aug 31, 2021</xd:p>
            <xd:p><xd:b>Author:</xd:b> elli</xd:p>
            <xd:p>Script to output each plant in a file by itself, and also to create a
                corresponding md file </xd:p>
        </xd:desc>
    </xd:doc>

    <xsl:output method="xml" indent="no" exclude-result-prefixes="xs xd t"/>


    <xsl:template match="t:div[@type = 'plant']">
        
        <!-- create xml document for each plant. -->
        <xsl:result-document href="../xmlout/plant{@xml:id}.xml">
            <TEI xmlns="http://www.tei-c.org/ns/1.0">
                <xsl:copy-of select="/t:TEI/t:teiHeader"/> <xsl:copy-of select="self::t:div"/>
            </TEI>
        </xsl:result-document>
        
        <!-- create md document for each plant -->
        <xsl:result-document method="text" href="out-md/plant{@xml:id}.md">
            <xsl:variable name="plant-title" select="t:head"/>
            <xsl:variable name="plant-num" select="substring-after(@xml:id, '-')"/>\
            <xsl:variable name="plant-taxon-link" select="t:ab/t:ref/@target"/>
            <xsl:variable name="plant-taxon-content" select="t:ab/t:ref"/>
            <!-- try to make regex to match only name, not numbers. don't need now -->
            <xsl:variable name="plant-name" select="replace($plant-title,'(N[\.N]\s+\d+) ([\w ]+)','$1')"/>
            
            <xsl:text>---
title: "</xsl:text><xsl:value-of select="$plant-title"/><xsl:text>"
plant-name: "</xsl:text><xsl:value-of select="$plant-name"/><xsl:text>"
plant-number: "</xsl:text><xsl:value-of select="$plant-num"/><xsl:text>"
plant-xml: "/assets/xml/plant</xsl:text><xsl:value-of
                select="$plant-num"/><xsl:text>.xml"
plant-title: "</xsl:text><xsl:value-of select="$plant-title"/><xsl:text>"
plant-taxon-link: "</xsl:text><xsl:value-of select="$plant-taxon-link"/><xsl:text>"
plant-taxon-link: "</xsl:text><xsl:value-of select="$plant-taxon-content"/><xsl:text>"
layout: single-xml
---</xsl:text>
        </xsl:result-document>--> </xsl:template>


</xsl:stylesheet>
