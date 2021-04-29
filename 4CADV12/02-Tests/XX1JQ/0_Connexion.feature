
@SageX3AutomatedTestPlatform
Feature: XX1JQ_0_Connexion

    Scenario: XX1JQ_0_1 - Login scenario
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        # And the user waits 3 seconds
        And the user changes the main language code to "fr-FR"