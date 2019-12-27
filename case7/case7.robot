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
Verify export button
    Open Website
    AND Click Login
    AND Click Cat project
    AND Click Tagging 
    AND Click Export
    AND Click Checkbox
    AND Click Export 
    AND Close Website

*** Keywords ***
Click Export
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/div/button
    Sleep  3  s

Click Checkbox
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/table/tbody/tr/th/input
    Sleep  3  s




