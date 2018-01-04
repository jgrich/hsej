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


Updates:

1. use spreadsheet of all health sciences titles with (mmsid and issn's included) HStitlesPlusMMSID
2. download spreadsheet of list of alma changes since the last update HSL_title_list_date.  In preparation for VLOOKUP:
  a. move ISSN column to the far right
  b. Find hyphens in ISSNs and Replace with nothing
  c. use Text to Columns to separate out ISSN's by the semi-colon delimiter
  d. insert3 empty columns after each ISSN column (to match the number of ISSN columns to look up in th the HStitlesPlusMMSID spreadsheet).
3. from the alma update spreadsheet, do a vlookup against HStitlesPlusMMSID; use issn's as source data and bring back titles
''' 
    =IFERROR(VLOOKUP(G2,[HStitlesPlusMMSID_2017_12.xlsx]HStitlesPlusMMSID!$C$2:$F$11179,4,FALSE),"")
    =IFERROR(VLOOKUP(G2,[HStitlesPlusMMSID_2017_12.xlsx]HStitlesPlusMMSID!$D$2:$F$11179,3,FALSE),"")
    =IFERROR(VLOOKUP(G2,[HStitlesPlusMMSID_2017_12.xlsx]HStitlesPlusMMSID!$E$2:$F$11179,2,FALSE),"")
'''
4. re-sort to isolate the matches, then re-sort again by change type (created, deleted, modified)
5. check each changed entry on live webpage and make appropriate updates; update HStitlesPlusMMSID spreadsheet as you go 
