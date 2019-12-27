*** Settings ***
Library                   Selenium2Library
Resource                  ../Keyword.robot

*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify Select Document button
    Open Website
    AND Click Login
    AND Click cat project
    AND Click tagging
    AND Click Name document
    AND Click First and last character of sentence
    AND Click Segment
    AND Click Save
    AND Click Select document
    AND Close Browser