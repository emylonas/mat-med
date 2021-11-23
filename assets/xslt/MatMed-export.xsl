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

    <!-- ****************** Processing the Preface ****************** -->
    
    <xsl:template match="t:div[@type='preface']">
        
<!-- ************* xml document for the preface ************* -->
        <xsl:result-document href="plant000.xml">
            <TEI xmlns="http://www.tei-c.org/ns/1.0">
                <xsl:copy-of select="/t:TEI/t:teiHeader"/> <xsl:copy-of select="self::t:div"/>
            </TEI>
        </xsl:result-document>
        
    <!-- ************* create md document for the preface ************* -->       
        <xsl:result-document method="text" href="../../_edition/plant000.md">
                <xsl:text>---
title: "</xsl:text><xsl:value-of select="t:head"/><xsl:text>"
plant-name: "</xsl:text><xsl:value-of select="t:head"/><xsl:text>"
plant-number: "0"
plant-xml: "/assets/xml/plant000.xml"
plant-title: "</xsl:text><xsl:value-of select="t:head"/><xsl:text>"
layout: single-xml
---</xsl:text>
            </xsl:result-document>-->
        
    </xsl:template>
    
    <!-- ****************** Processing each Plant ****************** -->
    
    <xsl:template match="t:div[@type='plant']">
        <xsl:variable name="xml-file" select="concat('plant',substring-after(@xml:id, '-'),'.xml')"/>
        <xsl:variable name="md-file" select="concat('../../_edition/plant',substring-after(@xml:id, '-'),'.md')"/>

        <!-- *************  create xml document for each plant. To change the location for the split up xml files, change
           the path in the $xml-file variable above.*************  -->
        <xsl:result-document href="{$xml-file}">
            <TEI xmlns="http://www.tei-c.org/ns/1.0">
                <xsl:copy-of select="/t:TEI/t:teiHeader"/> <xsl:copy-of select="self::t:div"/>
            </TEI>
        </xsl:result-document>

    <!-- ************* create md document for each plant. To change the location for the split up xml files, change
           the path in the $md-file variable above. ************* -->
        <xsl:result-document method="text" href="{$md-file}">
            <xsl:variable name="plant-title" select="t:head"/>
            <xsl:variable name="plant-num" select="substring-after(@xml:id, '-')"/>
            <xsl:variable name="plant-taxon-link" select="t:ab/t:ref/@target"/>
            <xsl:variable name="plant-taxon-content" select="t:ab/t:ref"/>
            <!-- try to make regex to match only name, not numbers. don't need now -->
            <xsl:variable name="plant-name" select="replace($plant-title,'(N[\.N]\s+\d+) ([\w ]+)','$1')"/>

            <xsl:text>---
title: "</xsl:text><xsl:value-of select="$plant-title"/><xsl:text>"
permalink: "/plant</xsl:text><xsl:value-of select="$plant-num"/><xsl:text>/"
plant-name: "</xsl:text><xsl:value-of select="$plant-name"/><xsl:text>"
plant-number: "</xsl:text><xsl:value-of select="$plant-num"/><xsl:text>"
plant-xml: "/assets/xml/plant</xsl:text><xsl:value-of
                select="$plant-num"/><xsl:text>.xml"
plant-img1: "/assets/img/plant</xsl:text><xsl:value-of select="$plant-num"/><xsl:text>_verso.jpg"
plant-img2: "/assets/img/plant</xsl:text><xsl:value-of select="$plant-num"/><xsl:text>.jpg"
plant-title: "</xsl:text><xsl:value-of select="$plant-title"/><xsl:text>"
plant-taxon-link: "</xsl:text><xsl:value-of select="$plant-taxon-link"/><xsl:text>"
plant-taxon-content: "</xsl:text><xsl:value-of select="$plant-taxon-content"/><xsl:text>"
layout: single-xml
---</xsl:text>
        </xsl:result-document>--> 
          
        </xsl:template>
    
    <!-- ************* create people index as an .md file. mostly using HTML -->
    <xsl:template match="t:text">
        <xsl:result-document href="../../_pages/peopleIndex.md" omit-xml-declaration="yes" >
            <xsl:text>---
title: "Index of People"
permalink: "/index-people/"
layout: single-xml
---</xsl:text>
            
           <xsl:for-each-group select="descendant::t:persName" group-by="@ref">
               <xsl:sort select="current-grouping-key()"/>
               <xsl:text>
## [</xsl:text><xsl:value-of select="id(substring-after(current-grouping-key(),'#'))"/>](<xsl:value-of select="id(substring-after(current-grouping-key(),'#'))/@ref"/>)
               information about person here
               <xsl:for-each-group select="current-group()" group-by="ancestor::t:div[@type='plant']/@xml:id">
                   <xsl:text>
 - [</xsl:text><xsl:value-of select="ancestor::t:div[@type='plant']/t:head"/><xsl:text>]({{ site.baseurl }}edition/plant</xsl:text><xsl:value-of select="substring-after(ancestor::t:div[@type='plant']/@xml:id, '-')"/><xsl:text>/) </xsl:text> 
                   <xsl:if test="count(current-group()) > 1">
                       <xsl:value-of select="concat('[',count(current-group()),']')"/>
                   </xsl:if>
               </xsl:for-each-group>
               
           </xsl:for-each-group>
        </xsl:result-document>
        
        <!-- ************* create places index as an .md file. mostly using HTML -->
 
            <xsl:result-document href="../../_pages/placesIndex.md" omit-xml-declaration="yes" >
                <xsl:text>---
title: "Index of Places"
permalink: "/index-places/"
layout: single-xml
---</xsl:text>
                
                <xsl:for-each-group select="descendant::t:placeName" group-by="@ref">
                    <xsl:sort select="current-grouping-key()"/>
                    <xsl:text>
## </xsl:text><xsl:value-of select="id(substring-after(current-grouping-key(),'#'))"/>
                    information about place here
                    <xsl:for-each-group select="current-group()" group-by="ancestor::t:div[@type='plant']/@xml:id">
                        <xsl:text>
 - [</xsl:text><xsl:value-of select="ancestor::t:div[@type='plant']/t:head"/><xsl:text>]({{ site.baseurl }}edition/plant</xsl:text><xsl:value-of select="substring-after(ancestor::t:div[@type='plant']/@xml:id, '-')"/><xsl:text>/) </xsl:text> 
                        <xsl:if test="count(current-group()) > 1">
                            <xsl:value-of select="concat('[',count(current-group()),']')"/>
                        </xsl:if>
                    </xsl:for-each-group>
                    
                </xsl:for-each-group>
            </xsl:result-document>
            
        
    </xsl:template>


</xsl:stylesheet>
