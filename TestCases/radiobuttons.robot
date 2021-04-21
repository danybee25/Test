*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  http://practiceselenium.com/practice-form.html



*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed      2seconds

    # Handling Radio Buttons
    radiobuttons

    #Selecting checkbox
    checkboxes

    #Handling dropdown menu
    dropdown menu

    #Handling list boxes
    listboxes

*** Keywords ***
radiobuttons
    select radio button     sex     Female
    select radio button     exp     5

checkboxes
    select checkbox     RedTea
    select checkbox     BlackTea
    select checkbox     tool-1
    select checkbox     tool-0
    select checkbox     tool-2
    unselect checkbox   tool-1

dropdown menu
    select from list by label   continents  Australia
    sleep   5
    select from list by index   continents  5

listboxes
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   Wait Commands
    select from list by label   selenium_commands   Navigation Commands
    unselect from list by label     selenium_commands   Switch Commands


