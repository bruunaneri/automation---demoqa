*** Settings ***
Resource        ../resource/resource_api.robot

***Test Cases ***
CT01 - Login User
    Given that body with a valid user was send on demoqa api 
    When request POST method with data /Account/v1/Authorized demoqa api
    Then status code should be 200