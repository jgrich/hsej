# hsej
files for creating an ejournals list specific to the health sciences

This repository supports the effort to create an A-Z list of ejournals that are relevant to the health sciences.  oXygen was used to transform the sources xml files.  A core list of titles (hstitles.xml) is cross-referenced (coreHStitlesInAlma.xsl) against an Alma report of all ejournal titles to generate the initial list of library holdings (alma.xml).

-hstitles.xml - customized list of core health sciences related titles.  Issn's are included in non-hyphenated format to match the format that comes out Alma.

-alma.xml - original report of all ejournals from the institutional zone in Alma

-coreHStitlesInAlma.xsl - transformation stylesheet to extract any titles from hstitles.xml that exist in alma.xml

This resulted in coreHSinalma.xml which was transformed to html using display.xsl to generate coreHSinalma.html.

Manual cleanup was necessary (more experienced programmmers can probably do this automatically)
*remove leading 'The...'
*consistent capitalization
*etc.

The list was broken out alphabetically and pasted into LibGuide pages manually.  Note there is a character limit to each page/subpage in LibGuides. (http://guides.lib.uw.edu/hsl/ej "Health Sciences eJournals")
