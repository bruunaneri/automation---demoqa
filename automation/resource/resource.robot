*** Settings ***
Library         Selenium Library

*** Variables ***
${BROWSER}          chrome 
${NAME}             Bruna
${LAST_NAME}        Neri
${USERNAME}         bruna_neri
${PASSWORD}         Bruna123!

*** Keywords ***
Given that you are in the demoqa
    Open Browser        https://demoqa.com/login      chrome

When you click in the New User button
    Click Element       css:button[id='newUser']

And fill the fields with valid informations
    Input Text          id=firstname       ${NAME}
    Input Text          id=lastname        ${LAST_NAME}          
    Input Text          id=userName        ${USERNAME}
    Input Text          id=password        ${PASSWORD}

And click in the box I'm not a robot
    Click Element       css:button[id='recaptcha-anchor-label']

And you click in the button Register
    Click Element       css:button[id='register']

Then the service will return a dialog box with a successfully user creation
    #the dialog box is not being found in the inspection. This bug should be reported and investigated by the dev responsable.
    
