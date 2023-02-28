---
layout: single
permalink: /technical-details/
title: "Technical Details"
---

## Technical Approaches and Contributions

Technical support for the Materia Medica in Transit digital publication
consists of information structuring and website construction.

**Digitization and Information Design of the Michiel Herbal**
Elli Mylonas and Cody Carvel of the Center for Digital Scholarship at
Brown University generated good quality OCR from scans of the De Toni
edition (1940) of the Herbal by Pietro Antonio Michiel. For this phase,
work focussed on the first section (*Libro Azzurro*).
The existing pdf of the De Toni edition was not very accurate, so the
CDS team used Microsoft Azure to generate new OCR text. Together with
Sabrina Minuzzi, the group identified important features of the text and
developed a TEI customization for marking it up. It was then possible to
apply basic structural markup to the resulting text. Further details
were added by hand by Dr. Minuzzi, such as the identification of people
and places, as well as links to bibliographical references and plant
identifications.

**Files relevant to the encoding process**
-   Encoding Documentation (Draft Version):
     [https://emylonas.reclaim.hosting/mat-med/doc/](https://www.google.com/url?q=https://emylonas.reclaim.hosting/mat-med/doc/&sa=D&source=editors&ust=1677537176547657&usg=AOvVaw34qv7TBzvPklArN2TIR45N)
-   Libro Azzurro encoded in XML:
    [https://github.com/emylonas/mat-med/blob/main/assets/xml/michiele-azzurro.xml](https://www.google.com/url?q=https://github.com/emylonas/mat-med/blob/main/assets/xml/michiele-azzurro.xml&sa=D&source=editors&ust=1677537176548315&usg=AOvVaw3gp7h3-5MFyzkSegp7UfJN)
-   Mat Med TEI customization:
    [https://github.com/emylonas/mat-med/blob/main/assets/xml/tei_MatMed.rng](https://www.google.com/url?q=https://github.com/emylonas/mat-med/blob/main/assets/xml/tei_MatMed.rng&sa=D&source=editors&ust=1677537176548985&usg=AOvVaw1wKGh3DCHjqwf0AmUpGHBj)
-   ODD file for generating the TEI customization:

Currently the *Libro Azzurro* has been encoded, and it is possible
to automatically generate indices of people and places that are
cross-linked with the text. Work continues on identifying and
disambiguating people and places. The work that has been done on the
*Libro Azzurro* provides a model for further work on the rest of
the Michiel Herbal.

**Website Development**
In order to publish the project on the web it was necessary to find a
framework that could handle XML and lend itself to automated
regeneration of the site, so that Dr. Minuzzi could easily edit and
generate new versions of the site. TEI Publisher
([https://teipublisher.com/index.html](https://www.google.com/url?q=https://teipublisher.com/index.html&sa=D&source=editors&ust=1677537176550241&usg=AOvVaw0PrwEo-x6RFvksfCqdy8Pz))
initially seemed to be a good choice, as it is a native TEI online
publishing system. However, at the time when we were working with it, it
had substantial server requirements that would have been
cost-prohibitive, and did not fit the constraints of most institutional
hosting. TEI Publisher is now able to generate a static site, but this
wasn't the case 2 years ago.

The group decided to use a static site generator in order to have a
site that would require no back end support, and so would be easy to
host. We chose Jekyll and the Minimal Mistakes theme. Jekyll has the
advantage that it is also native to GitHub and can be set up so as to
generate a new site whenever changes are committed and pushed to GitHub,
so a scholar editing the site can make edits or add content and make it
live without intervention from technical contributors.
The project received 20 hours of design help from the Brown University
Library, to create a header graphic and provide help with layout and
consistency.
The website consists of three main components - two expository sections
on gardens and apothecary shops in Venice, and the Michiel edition. The
first two are edited directly in Jekyll using Markdown or HTML as
needed. The source files are available to Dr. Minuzzi, but have mostly
been put together by Elli Mylonas. The edition, which is encoded as a
single document, is segmented by an XSL script so that each plant can be
displayed as a single web page in Jekyll, and the native TEI XML is
formatted on the client side using the [CETEIcean javascript library](https://github.com/TEIC/CETEIcean).

The website is currently running on GitHub
([https://emylonas.github.io/mat-med/](https://www.google.com/url?q=https://emylonas.github.io/mat-med/&sa=D&source=editors&ust=1677537176551278&usg=AOvVaw1H9iHxFkwfYb4WkG-11YkD))
as well as on a Reclaim Hosting test site:
[https://emylonas.reclaim.hosting/mat-med/](https://www.google.com/url?q=https://emylonas.reclaim.hosting/mat-med/&sa=D&source=editors&ust=1677537176551538&usg=AOvVaw0_I5EQSPXQczL3vqcr3-ZI).
The project is in the process of acquiring the domain name
`materiamedicaintransit.eu`.

**Documentation**
The project plans to publish a description of the process and work flow
they are using, as well as encoding documentation, on the website.

**Future Work**
As noted above, the work that has been done to add XML markup to the
OCRed De Toni edition serves as a model for the encoding of the other 4
books. The website generation is also in place so that more books can be
added with very little customization.
