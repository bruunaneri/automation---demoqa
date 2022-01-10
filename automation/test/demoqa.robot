*** Settings ***
Resource        ../resource/resource.robot

***Test Cases ***
CT01 - Create a new user
    Given that you are in the demoqa
    When you click in the New User button
    And fill the fields with valid informations
    And click in the box I'm not a robot
    And you click in the button Register 
    Then the service will return a dialog box with a successfully user creation