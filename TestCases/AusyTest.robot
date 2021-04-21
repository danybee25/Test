*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}  chrome
${url}  https://www.randstad.fr/


*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    maximize browser window
    set selenium speed      5seconds
    input text   id:id_What     boulanger
    click element   id:onetrust-accept-btn-handler
    click element   //*[@id="004..."]/div[1]/div/div[2]/div/div/div[2]/div/div[2]/span
    sleep   5
    click element   //*[@id="004..."]/div[1]/div/div[2]/div/div/div[2]/div/div[3]/div/ul/li[2]
    sleep   5
    click element   //*[@id="004..."]/div[1]/div/div[2]/div/div/button/span[1]
    click element   //*[@id="Job-1"]



#This is the test to be conducted

*** Keywords ***

