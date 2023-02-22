---
layout: single
permalink: /doc/
title: "About"
excerpt: "Minimal Mistakes is a flexible two-column Jekyll theme."
---



<header id="title-block-header">
<h1 class="title">Marking up Michiel’s Herbal using TEI</h1>
</header>
<p><a href="#basic-structure">Basic Structure 1</a></p>
<p><a href="#div-elements-within-each-plant-div">&lt;div&gt; Elements Within each Plant 2</a></p>
<p><a href="#notes">Notes 3</a></p>
<p><a href="#footnote-numbers-in-michiels-de-tonis-ed.s-texts">Footnote Numbers (in Michiel’s-De Toni’s-Ed.’s texts): 4</a></p>
<p><a href="#references-to-other-plants-in-michiel">References to other plants in Michiel: 4</a></p>
<p><a href="#markup-for-the-prose-text">Markup for the prose text 4</a></p>
<p><a href="#translations-of-foreign-plant-names-and-other-words">Translations of foreign plant names and other words: 4</a></p>
<p><a href="#foreign-words-or-phrases">Foreign words or phrases: 4</a></p>
<p><a href="#personal-names-and-place-names">Personal Names and Place Names: 5</a></p>
<p><a href="#identification-of-people">Identification of People: 5</a></p>
<p><a href="#place-names">Place Names: 6</a></p>
<p><a href="#quotations">Quotations: 6</a></p>
<p><a href="#italics-that-are-not-otherwise-indicated">Italics that are not otherwise indicated: 6</a></p>
<p><a href="#titles-of-works">Titles of works: 6</a></p>
<p><a href="#references-to-the-detoni-bibliography">References to the DeToni bibliography: 6</a></p>
<p><a href="#references-to-contemporary-15th-c-sources-cited-by-michiel">References to contemporary (15<sup>th</sup>-c) sources cited by Michiel: 6</a></p>
<p><a href="#other-modern-bibliography-on-the-plants">Other modern Bibliography on the plants: 6</a></p>
<p><a href="#multiple-references">Multiple References 7</a></p>
<p><a href="#other-sections">Other Sections 8</a></p>
<p><a href="#notes-1">Notes 8</a></p>
<p><a href="#bibliography">Bibliography 8</a></p>
<p><a href="#questions">Questions: 8</a></p>
<h2 id="basic-structure">Basic Structure </h2>
<p>Each plant is contained in a &lt;div&gt; element, with a series of &lt;div&gt; elements delimiting the sections within it.</p>
<p>&lt;div type="plant" xml:id="A-001"&gt;<br />
&lt;head&gt;N. I CIRUELAS MONTESES&lt;/head&gt;<br />
&lt;div type="name"&gt;<br />
&lt;head&gt;NOMI&lt;/head&gt;<br />
&lt;p&gt; Ciruelas monteses ex fruta de Indiani.&lt;/p&gt;<br />
&lt;/div&gt;</p>
<p>…</p>
<p>&lt;/div&gt;</p>
<p>The first &lt;div&gt; element has two attributes,</p>
<ol type="1">
<li><p>@type indicates the type of &lt;div&gt; element. The outermost &lt;div&gt; is always<br />
&lt;div type="plant"&gt;</p></li>
<li><p>@xml:id provides a unique ID for the plant. We are using the format “A-000” where the letter indicates the book. And the number is the number of the plant in the manuscript, but with one or two leading zeros, so that the number always has 3 digits.</p>
<ol type="a">
<li><p>Azzurro=A</p></li>
<li><p>Rosso 1=R1</p></li>
<li><p>Rosso 2=R2</p></li>
<li><p>Giallo=G</p></li>
<li><p>Verde=V</p></li>
</ol></li>
</ol>
<p>The first element inside the containing &lt;div&gt; is &lt;head&gt; which contains the plant number and name as written in the manuscript.</p>
<p>&lt;head&gt;N. I CIRUELAS MONTESES&lt;/head&gt;</p>
<p>This is followed by an &lt;ab&gt; element that contains the scientific name of the plant. If there is more than one scientific name, each should be contained within its own &lt;ab&gt; element. Not every plant has a scientific name in DeToni.</p>
<p>&lt;ab&gt;[&lt;hi&gt;Viburnum Tinus L.&lt;/hi&gt;] &lt;ref</p>
<p>target="http://www.worldfloraonline.org/taxon/wfo-0000422887"&gt;WFO&lt;/ref&gt;</p>
<p>Use &lt;ab&gt;Not identified&lt;/ab&gt; for plants with no certain identification.</p>
<p>Following the scientific plant name are one or two URLs encoded in &lt;ref&gt; elements. Generally, one is a link to the plant definition in World Flora Online, and the other to the Kew Gardens web page. The content of the &lt;ref&gt; element is the name of the database – for ex. World Flora Online is “WFO” and the Kew Gardens database would be entered as “Kew.”</p>
<p>&lt;ref target="http://www.worldfloraonline.org/taxon/wfo-0000422887"&gt;WFO&lt;/ref&gt;</p>
<h3 id="div-elements-within-each-plant-div">&lt;div&gt; Elements Within each Plant &lt;div&gt;</h3>
<p>The &lt;div&gt; elements that are contained within each plant represent the different topic heading in the manuscript. Each &lt;div&gt; has a type attribute with a normalized (English?) term identifying the topic. The first element inside the &lt;div&gt; is a &lt;head&gt; element that contains the heading as it appears in the manuscript.</p>
<p>&lt;div type="genera"&gt;<br />
&lt;head&gt;GENERA&lt;/head&gt;<br />
&lt;p&gt; Ne sonno de due spezie de lauri domestici et noti, una fa le foglie maggior<br />
dell'altro, ma nel resto simili, et questo de silvestre.&lt;/p&gt;<br />
&lt;/div&gt;</p>
<p>The possible values of type are:</p>
<p>&lt;div type="genus"&gt; &lt;/div&gt; Genera</p>
<p>&lt;div type="shape"&gt; &lt;/div&gt; forma</p>
<p>&lt;div type="place"&gt; &lt;/div&gt;</p>
<p>&lt;div type="exposure"&gt; &lt;/div&gt;</p>
<p>&lt;div type="development_cycle"&gt; &lt;/div&gt;</p>
<p>&lt;div type="reproduction"&gt; &lt;/div&gt;</p>
<p>&lt;div type="properties"&gt; &lt;/div&gt;</p>
<p>&lt;div type="opinions"&gt; &lt;/div&gt;</p>
<p>&lt;div type="disagreements"&gt; &lt;/div&gt;</p>
<p>After the &lt;head&gt; element follow one or more paragraphs, encoded with &lt;p&gt;.</p>
<h3 id="notes">Notes</h3>
<p>After the sections describing the plant and its origins, uses, environment, et al. which are in the manuscript are &lt;div&gt;s containing editorial commentary by DeToni, by Sabrina, and bibliography and other references. Each &lt;div&gt; has a @type attribute. Possible values:</p>
<ul>
<li><p>Editorial-D (DeToni’s commentary)</p></li>
<li><p>Bibl (Bibliography)</p></li>
<li><p>Editorial-S (Sabrina’s commentary)</p></li>
<li><p>Notes (the footnotes belonging to this plant)</p></li>
<li><p>? what else? (Other items that we will discover are necessary</p></li>
</ul>
<p>There are notes that were made by the editor who took over the work in 1940, after deToni had passed away. These form part of the editorial notes, but are preceded by * and closed by (Ed.) in the print edition) &lt;note n="N1"&gt; * Assai. (Ed.).&lt;/note&gt;. These notes will remain in the Editorial-D section, but will be encoded as they appear, with the * and the (Ed.) preceeding and following. (decided this on 2/25)</p>
<p>If you want to add responsibility for the note content:</p>
<blockquote>
<p>&lt;note n="N1" resp="dt"&gt;In bianco. &lt;/note&gt;<br />
&lt;note n="N2" resp="ed"&gt;La sigla k si deve leggere a carte (pagina).&lt;/note&gt;<br />
&lt;note n="N3" resp="sm"&gt; *</p>
</blockquote>
<p>BUT: summer 2021:</p>
<p>&lt;div type="notes"&gt;<br />
&lt;note xml:id="A-045-N1" n="1"&gt; * La lettura del codice è incerta: potrebbe essere anche zapolt. Si tratta ad ogni modo della pianta che gli spagnoli chiamano Chico zapote (&lt;hi&gt;Achras Sapota L.&lt;/hi&gt;).<br />
(Ed.).&lt;/note&gt;<br />
&lt;note xml:id="A-045-N2" n="2"&gt; Albicocche.&lt;/note&gt;<br />
&lt;note xml:id="A-045-N3" n="3"&gt; Innesto. &lt;/note&gt;<br />
&lt;/div&gt;<br />
&lt;/div&gt;</p>
<h3 id="footnote-numbers-in-michiels-de-tonis-ed.s-texts">Footnote Numbers (in Michiel’s-De Toni’s-Ed.’s texts):</h3>
<p>The footnote reference in the text should be indicated using the empty &lt;ptr&gt; element. &lt;ptr target="N2"&gt; where the value of the @target attribute refers to the note number in the notes section below. &lt;ptr&gt; is an empty element, which may not have content, so it is marked using the short form for empty elements. &lt;ptr target="xx"/&gt;, and doesn’t require a separate closing tag. If you use the <strong>shortcut in Oxygen</strong>, it will enter the shortened form. </p>
<p>BUT: summer 2021, notes in text</p>
<p>(&lt;ptr target="#A-045-N3"/&gt;)</p>
<h3 id="section"></h3>
<h3 id="references-to-other-plants-in-michiel">References to other plants in Michiel:</h3>
<p>Surround the number or other citation with &lt;ref target="#A-025"&gt;N. 25&lt;/ref&gt; where the value of the @target attribute is the @xml:id of the plant in our document.</p>
<p>When the reference is to two plants, each one should have a &lt;ref&gt; element.</p>
<blockquote>
<p>&lt;ref target="#A-041"&gt;N. 41&lt;/ref&gt;, &lt;ref target="#A-042"&gt;42&lt;/ref&gt;ecc.</p>
</blockquote>
<p>But: updated (summer 2021) internal reference, within the same book: &lt;ref type="internal" target="#A-050"&gt;[N. 50]&lt;/ref&gt;</p>
<p>&lt;ref type="internal" target="#A-016"&gt;k. 16&lt;/ref&gt;</p>
<p>But: updated (summer 2021) internal reference, in another Michiel’s book</p>
<p>&lt;ref target="#R1-116"&gt;libro primo rosso k. 116 &lt;/ref&gt;</p>
<h2 id="markup-for-the-prose-text">Markup for the prose text</h2>
<h3 id="translations-of-foreign-plant-names-and-other-words">Translations of foreign plant names and other words: </h3>
<p>If you want this to be invisible to the reader, surround the translated terms with &lt;seg type="trans"&gt;… &lt;/seg&gt; and use &lt;foreign&gt; for the translations as below.</p>
<h3 id="foreign-words-or-phrases">Foreign words or phrases: </h3>
<p>&lt;foreign xml:lang="grc"&gt;…&lt;/foreign&gt; Possible values for the @xml:lang attribute are: Ancient Greek: grc; German: de, French: fr</p>
<h3 id="personal-names-and-place-names">Personal Names and Place Names:</h3>
<p>&lt;persName&gt; …&lt;/persName&gt; (in the body of the text). Similarly, &lt;placeName&gt; …&lt;/placeName&gt;</p>
<p>You can disambiguate the person by adding a ref attribute to persName, as below:</p>
<p>&lt;persName ref="#daMula"&gt;Marco Antonio da Mula&lt;/persName&gt; where the @ref attribute value refers to that person’s entry in the authority list of people/names.</p>
<h3 id="identification-of-people">Identification of People:</h3>
<p>In the body of the text, you just mark people’s names with a &lt;persName&gt; and a reference to an author. Above the &lt;text&gt; and following the &lt;teiHeader&gt;, there is an element called &lt;standOff&gt; which is where authority lists are maintained. Within the &lt;standOff&gt; element, there are lists for people, places and any other indexing terms or references that will be necessary for the edition. The structure is as follows:</p>
<p>&lt;standOff&gt;<br />
&lt;listPerson&gt;<br />
&lt;person&gt;<br />
&lt;persName xml:id="daMula" ref="https://www.treccani.it/enciclopedia/marcantonio-da-mula_%28Dizionario-Biografico%29/"&gt;Da Mula, Marcantonio&lt;/persName&gt;<br />
&lt;/person&gt;</p>
<p>&lt;person&gt;…<br />
&lt;person&gt;…<br />
&lt;/listPerson&gt;</p>
<p>&lt;listPlace&gt;</p>
<p>….</p>
<p>&lt;/listPlace&gt;</p>
<p>&lt;listBibl&gt;</p>
<p>….</p>
<p>&lt;/listBibl&gt;<br />
&lt;/standOff&gt;</p>
<p>When you encounter a person in the body of the text, you should encode them with &lt;persName&gt; and either use an existing identifier for the value of the @ref attribute (if the person has already been encountered, earlier) or make up a new one, making sure that it is unique. <em>MatMed is only encoding the first appearance of a name in each plant.</em></p>
<p>You can then enter the information for this person in the &lt;standOff&gt; section. In order to save time, you can keep track of your new @ref values in a word file or notebook, and fill out the authority list all later. Note that if a person has already been entered in the authority list, you will be able to select their identifier from a drop down menu for the @ref attribute.</p>
<p>When a person isn’t found in standard reference works, but you have information about them, then the &lt;person&gt; element can contain a paragraph that has biographic information and the &lt;persName&gt; element or elements.</p>
<blockquote>
<p>&lt;person&gt;</p>
</blockquote>
<p>&lt;p&gt;<br />
&lt;persName xml:id="Alpago"&gt;Alpago, Agostino &lt;/persName&gt; Botanist from Cividale di Belluno; he studied arts and medicine in Padua and, probably in 1487, went to Damascus as physician to the Venetian consulate.</p>
<blockquote>
<p>&lt;/p&gt;<br />
&lt;/person&gt;</p>
</blockquote>
<h3 id="section-1"></h3>
<h3 id="place-names">Place Names:</h3>
<blockquote>
<p>&lt;placeName &gt;…&lt;/placeName&gt;</p>
</blockquote>
<p>Treat like &lt;persName&gt;. There will be a list of places in the &lt;standOff&gt; element as well.</p>
<h3 id="section-2"></h3>
<h3 id="quotations">Quotations: </h3>
<blockquote>
<p>&lt;q&gt; or &lt;quote&gt;</p>
</blockquote>
<h3 id="section-3"></h3>
<h3 id="italics-that-are-not-otherwise-indicated">Italics that are not otherwise indicated:</h3>
<blockquote>
<p>&lt;hi&gt;…&lt;/hi&gt;</p>
</blockquote>
<h3 id="titles-of-works">Titles of works:</h3>
<blockquote>
<p>&lt;title&gt;Bucolica&lt;/title&gt;</p>
</blockquote>
<h3 id="references-to-the-detoni-bibliography">References to the DeToni bibliography: </h3>
<blockquote>
<p>&lt;ref type="bibl" target="http://linktocatalog record"&gt;(305)&lt;/ref&gt;</p>
</blockquote>
<h3 id="references-to-contemporary-15th-c-sources-cited-by-michiel">References to contemporary (15<sup>th</sup>-c) sources cited by Michiel: </h3>
<blockquote>
<p>&lt;bibl ana="#india-1"&gt; primo libro del India&lt;/bibl&gt;</p>
</blockquote>
<p>These sources should be treated like &lt;persName&gt; and &lt;placeName&gt;, which link to an authority file in the &lt;standoff&gt; element. Encode the title of the book within a &lt;bibl&gt; element, but in this case, you have to use an @ana attribute, as @ref cannot be used with &lt;bibl&gt;. The @ana attribute points to an entry in the &lt;listBibl&gt;.</p>
<p>&lt;listBibl&gt;</p>
<blockquote>
<p>&lt;bibl&gt;&lt;ref target="<a href="http://id.sbn.it/bid/CNCE012533">http://id.sbn.it/bid/CNCE012533</a>"&gt;author, title&lt;/ref&gt;&lt;/bibl&gt;</p>
<p>…</p>
</blockquote>
<p>&lt;/listBibl&gt;</p>
<h3 id="other-modern-bibliography-on-the-plants">Other modern Bibliography on the plants:</h3>
<blockquote>
<p>&lt;div type="bibl"&gt;<br />
&lt;bibl&gt;https://doi.org/10.1093/jhc/fhy062&lt;/bibl&gt;<br />
&lt;/div&gt;</p>
</blockquote>
<p>[Further options, March 14 2021:] </p>
<ol type="1">
<li><p><strong>First option<br />
</strong></p></li>
</ol>
<p>&lt;div type="bibl"&gt;</p>
<p> &lt;bibl&gt;Smith, Tom. A book title. 2020. &lt;idno&gt;<a href="https://doi.org/10.1093/jhc/fhy062">https://doi.org/10.1093/jhc/fhy062</a>&lt;idno&gt;&lt;/bibl&gt;</p>
<p>...</p>
<p>This is simple and you just punctuate the bibliographic entry as you prefer. It would have no italics or other changes in font style.</p>
<p>I realized that &lt;idno&gt; may be better than other elements we discussed for the link as it's actuall indicating an identifier, shelf mark, catalog number or id, such as a DOI.</p>
<p>But: cannot I use just &lt;hi&gt; for Italics? Es.</p>
<p>&lt;bibl&gt;Peter Mason, José Pardo-Tomás, Bringing it back from Mexico: Eleven paintings of trees in I cinque libri delle piante of Pier’Antonio Michiel (1510–1576), &lt;hi&gt;Journal of the History of Collections&lt;/hi&gt;, Volume 32, Issue 2, July 2020, Pages 225-237&lt;idno&gt;https://doi.org/10.1093/jhc/fhy062&lt;/idno&gt;&lt;/bibl&gt;</p>
<blockquote>
<p><strong>2) Second option</strong></p>
</blockquote>
<p>&lt;div type="bibl"&gt;</p>
<p> &lt;bibl&gt;&lt;author&gt;Smith, Tom.&lt;/author&gt; &lt;title&gt;A book title. 2020&lt;/title&gt;. &lt;idno&gt;<a href="https://doi.org/10.1093/jhc/fhy062">https://doi.org/10.1093/jhc/fhy062</a>&lt;/idno&gt;&lt;/bibl&gt;</p>
<p>...</p>
<p>This one lets you indicate the author and the title, especially if you want to italicize the title, for ex. but it gets complicated once you move into journal articles and so on. There are elements for marking up all parts of a bibliographic entry.</p>
<h3 id="multiple-references">Multiple References</h3>
<p>If a single reference refers to more than one catalog entry, for example all three volumes of “libri dell'India” then enter all three in the @target attribute.</p>
<blockquote>
<p>&lt;ref type="bibl" target="http://id.sbn.it/bid/CNCE012533 http://id.sbn.it/bid/TO0E019412 http://id.sbn.it/bid/RMLE012360"&gt;libri dell’India&lt;/ref&gt;</p>
</blockquote>
<p>If a there is more than one reference in a note or entry, then each one should have its own &lt;ref&gt;</p>
<blockquote>
<p>&lt;ref type="bibl" target="http://id.sbn.it/bid/CAG0081035"&gt;303&lt;/ref&gt;, &lt;ref type="bibl" target="http://id.sbn.it/bid/MOD0412287"&gt;305&lt;/ref&gt;, &lt;ref type="bibl" target="http://id.sbn.it/bid/RMLE0070830412287"&gt;191&lt;/ref&gt;) si comprende che</p>
</blockquote>
<h2 id="section-4"></h2>
<h2 id="section-5"></h2>
<h2 id="other-sections">Other Sections</h2>
<h3 id="notes-1">Notes</h3>
<p>The section containing the notes is marked as &lt;div type="notes"&gt; and contains a series of &lt;note&gt; elements. Each note has an @n attribute indicating the note number. Note numbering is currently out of order because some plants begin on one page and end on the next, so that their footnotes may be spread over two pages. In DeToni, footnotes begin again on each page, so one plant may include the last footnote on one page and the first 2 on the next. Ideally, footnotes will start renumbering in each plant. This may be done automatically, doesn’t have to be done by hand. When editing, it’s best to make sure that the note markers and the notes match.</p>
<p>&lt;note n="N2"&gt; text of note &lt;/note&gt;</p>
<h3 id="bibliography">Bibliography</h3>
<p>The section containing the notes is marked as &lt;div type="bibl"&gt; and contains a series of &lt;bibl&gt; elements. Enter one bibliographic reference into each &lt;bibl&gt; element.</p>
<h2 id="questions">Questions:</h2>
<p>Do we need to keep the running titles?</p>
<p>&lt;fw type="running-head" place="top"&gt;LIBRO AZZURRO&lt;/fw&gt; NO I have eliminated it already</p>
<p>But: footnotes numbering restarts at each page. I might restart the footnotes <u>at each plant</u>, don’t you think it is better? Absolutely</p>
<p>I am also wondering if keeping page numbers.... &lt;pb n="12" &lt;/pb&gt;</p>
<p>I think would better to move the <u>bare texts</u> from paper to the web, releasing them from the 1940 edition (hide page numbers) let’s leave them in the XML and not display them.</p>
<p>Bibliography, es. in no. 1: di cui dà la descrizione (305)</p>
<p>&lt;ab ref="http://id.sbn.it/bid/MOD0412287"/ab&gt; 305 refers to a bibliographic title at the end of the 1940 volume. In this case I put the permalink for the catalogue descriptions. Does the tag ab ref fit?</p>
<p>GEOCODES,</p>
<p>&lt;p&gt;Io l'hebbi dal eccell. sig. &lt;persName ref="https://www.treccani.it/enciclopedia/ulisse-aldrovandi_(Dizionario-Biografico)"&gt;Ulisse Aldovrandi&lt;/persName&gt; da Bolognia; nasse nelle &lt;placeName ref="https://www.geonames.org/3177545/dolomiti.html"&gt;&lt;/placeName&gt;Alpi.&lt;/p&gt;<br />
&lt;/div&gt;</p>
<p>» «</p>
