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
Verify back to project
    Open Website
    AND Click Login
    AND Click cat project
    AND Click Back to project
    AND Close Website

*** Keywords ***
Click Back to project
    Wait Until Element Is Visible   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[1]
    Click Element                   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[1]
    Sleep  2  s




