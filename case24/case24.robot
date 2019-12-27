*** Settings ***
Library                   Selenium2Library
Resource                  ../Keyword.robot

*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify Word tagging button
    Open Website
    AND Click Login
    AND Click cat project
    AND Click tagging
    AND Click Name document
    AND Click First and last character of sentence
    AND Click Segment
    AND Click Word tagging
    AND Click Cancel in pop up
    AND Close Browser