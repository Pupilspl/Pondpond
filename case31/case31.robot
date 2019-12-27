*** Settings ***
Library                   Selenium2Library
Resource                  ../Keyword.robot

*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify Status dropdown button
    Open Website
    AND Click Login
    AND Click cat project
    AND Click tagging
    AND Click Name document
    AND Click Word tagging
    AND Show dropdown status
    AND Close Browser