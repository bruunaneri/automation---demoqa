*** Variables ***
${URL}      https://demoqa.com/

*** Keywords ***
Given that body with a valid user was send on demoqa api
     ${body}     Catenate        SEPARATOR=
...  {
...  "userName": "bruna_neri",
...  "password": "Bruna123!"
...  }
 Set Test Variable    ${body}

When request POST method with data ${scenario_url} demoqa api
    Set To Dictionary    ${headers}         Content-Type=application/json
    Create Session       demoqa_api        ${URL}
    ${response}          POST On Session    demoqa_api             ${scenario_url}    data=${body}    headers=${headers}
    Set Test Variable    ${response}

Then status code should be ${scenario_statusCode}
    Status Should Be    ${scenario_statusCode}    ${response} 


