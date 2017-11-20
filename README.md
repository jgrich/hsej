# hsej
files for creating an ejournals list specific to the health sciences

This repository supports the effort to create an A-Z list of ejournals that are relevant to the health sciences.  oXygen was used to transform the sources xml files.  A core list of titles (hstitles.xml) is cross-referenced (coreHStitlesInAlma.xsl) against an Alma report of all ejournal titles to generate the initial list of library holdings (alma.xml).

-hstitles.xml - customized list of core health sciences related titles.  Issn's are included in non-hyphenated format in all relevant files.

-alma.xml - original report of all ejournals from the institutional zone in Alma

-coreHStitlesInAlma.xsl - transformation stylesheet to extract any titles from hstitles.xml that exist in alma.xml

This resulted in coreHSinalma.xml which was transformed to html using display.xsl to generate coreHSinalma.html.  ejournal links opened to the ejournal record in Primo.

Manual cleanup was necessary (more experienced programmmers can probably do this automatically)
-remove leading 'The...'
-consistent capitalization
-etc.

The list was broken out alphabetically and pasted into LibGuide pages manually.  Note there is a character limit to each page/subpage in LibGuides. (http://guides.lib.uw.edu/hsl/ej "Health Sciences eJournals")

Fall 2017 Primo interface change required url modifcations as per the following example where the mmsid number (in this example: 99158627260001452) is the variable. https://alliance-primo.hosted.exlibrisgroup.com/primo-explore/search?query=any,contains,99158627260001452&tab=default_tab&search_scope=all&vid=UW&offset=0
