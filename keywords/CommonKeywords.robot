*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Wait Until Keyword Succeeds    5x    2s    Input Text    ${locator}    ${text}

Wait until page contains element then verify text
    [Arguments]    ${expected_text}
    Wait Until Element Is Visible    xpath=//*[contains(text(),'${expected_text}')]    timeout=10s
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain    ${expected_text}

