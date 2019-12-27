*** Settings ***
Library     Selenium2Library
Library     Collections
Library     OperatingSystem
Library     Screenshot 
Resource                  ../Keyword.robot
*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify tagging button
    Open Website
    AND Click Login
    AND Click Cat project
    AND Click Tagging 
    AND Close Website

