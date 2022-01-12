---
layout: single
permalink: /about/
title: "About"
excerpt: "Minimal Mistakes is a flexible two-column Jekyll theme."
---

[We will add links to all entities below] 

## The Digital *Materia Medica* 

### Website Technology
Several criteria guided the selection of a development platform for the *Materia Medica* website. It had to be easily portable, couldn't rely on significant infrastructure, and had to be as sustainable as possible with little support. It also had to allow the project PI and other researchers to add and edit content by themselves, without intervention from technical staff. 

The team therefore decided to use a static page generator, so that the resulting website would only rely on client-side technology such as HTML, CSS and Javascript. We decided to use Jekyll, because its integration with GitHub allows for a simple development environment. We chose the Minimal Mistakes Jekyll theme, because it was one of the few themes that was designed to allow customization.

We have added CSS, Javascript and new layouts to the theme, but have not made changes to its basic structure. 

### Data

The *Materia Medica* project has two kinds of content - most pages are one of a kind, and are written in HTML or MarkDown. These pages include the sections on the Venetian gardens and the apothecary shops. The digital edition, however, is marked up in XML according to the Text Encoding Initiative Guidelines.

The XML file is the fundamental data source, to which edits, corrections and additions are made. An XSL script is used to split the file up according to plants, and to generate Markdown metadata pages for the site. The same script also generates the indices of people and places. This script can be run by researchers when they have made changes to the content of the site. 

All project files are stored in [GitHub](https://emylonas.github.io/xml-minimal/) and are publicly available. Note that this is a draft site and that the Github repository and project URL are subject to change.

### XML encoding and rendering 

Encoding documentation was developed for the digital edition, and was refined as needed - *It will be linked from this page.*

We decided not to convert pages of the Herbal to HTML or Markdown in the initial transformation, because we were concerned that we might lose some strucural details. So we decided to keep the slightly simplified XML text, and use the CETEIcean library to render the XML in the browser. This is espcially useful as the text is a work in progress, and is being corrected and enriched by the principal investigator. 


### Credits

Sabrina Minuzzi, the principal investigator of this project, is responsible for all the content and intellectual contributions. 

The Brown University Center for Digital Scholarship provided support and direction for the data architecture of the digital edition, a process for implementing and generating the website and visual design. 

CDS and Brown library staff who worked on this project: 
- Cody Carvel
- Elli Mylonas
- Ben Tyler

<div class="ornament">p</div>
