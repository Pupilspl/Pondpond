*** Settings ***
Library                   Selenium2Library

*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify Sentence Segmentation button
    Open Website
    AND Click Login
    AND Click cat project
    AND Click tagging
    AND Click Name document
    AND Click Word tagging
    AND Click dropdown status
    AND Choose Complete
    AND Click Sentence Segmentation
    AND Close Browser

*** Keywords ***
Open Website
    Open Browser    ${CorpusWeb}    ${Browser}
    Maximize Browser Window

Click Login
    Wait Until Element Is Visible   //*[@id="root"]/div/div/div/a[2]
    Click Element                   //*[@id="root"]/div/div/div/a[2]
    Sleep  3  s

Click Cat project
    Wait Until Element Is Visible   //*[@id="root"]/div/div[3]/div/div[3]/div/div[1]/div
    Click Element                   //*[@id="root"]/div/div[3]/div/div[3]/div/div[1]/div
    Sleep  3  s

Click Tagging
    Wait Until Element Is Visible   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[4]
    Click Element                   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[4]
    Sleep  3  s

Click Name document
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/table/tbody/tr/td[1]/div
    Sleep  3  s

Click First and last character of sentence
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/div[3]/div[2]/span[157]
    Sleep  2  s
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/div[3]/div[2]/span[223]
    Sleep  2  s

Click Segment
    Click Element                   //*[@id="root"]/div/div[2]/div[3]/div[1]/button
    Sleep  3  s

Click Word Tagging
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/div[2]/p[2]
    Sleep  3  s

Click Save
    Click Element                  //*[@id="root"]/div/div[2]/div[2]/div[2]/button
    Sleep  3  s

Click Save in pop up
    Click Element                  //*[@id="root"]/div/div[3]/div/div[2]/div/button[2]
    Sleep  3  s

Click Cancel in pop up
    Click Element                  //*[@id="root"]/div/div[3]/div/div[2]/div/button[1]
    Sleep  3  s

Click Select document   
    Click Element                  //*[@id="root"]/div/div[2]/div[2]/div[2]/p[1]
    Sleep  3  s

Show dropdown status
    Element Should Be Enabled       //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div/button

Click dropdown status
    Click Element       //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div/button
    Sleep  3  s

Choose In progress
    Click Element       //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div/div/a
    Sleep  2  s

Choose Complete
    Click Element       //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div/div
    Sleep  2  s

Click Sentence segmentation
    Click Element       //*[@id="root"]/div/div[2]/div[2]/div[2]/p
    Sleep  2  s

Click word first and last character
    Click Element       //*[@id="root"]/div/div[2]/div[2]/div[3]/div[2]/span[627]
    Sleep  2  s
    Click Element       //*[@id="root"]/div/div[2]/div[2]/div[3]/div[2]/span[633]
    Sleep  2  s

Tag Entity
    Click Element       //*[@id="root"]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div[2]/h/span[2]
    Sleep  2  s

Tag Entity2
    Click Element       //*[@id="root"]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div[1]/h/span[2]
    Sleep  2  s

Close Website
    Close Browser