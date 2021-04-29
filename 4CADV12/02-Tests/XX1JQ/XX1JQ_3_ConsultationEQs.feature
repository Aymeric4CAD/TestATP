###########################################################################
# On est bien
###########################################################################

@SageX3AutomatedTestPlatform
Feature: XX1JQ_3 - ConsultationEQs

    Scenario: XX1JQ_3_1 - Login scenario
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"


    Scenario Outline: XX1JQ_3_2 - Ouverture de la fonction et consultation des EQs
        Given the user opens the "GESXX1JQXIN" function
        When  the user selects the data table of left panel
        And the user selects cell with text: <NOMEQ> and column header: "Evénem qual"
        And the user clicks on the selected cell

        #Close the function
        Then the user clicks the Close page action icon on the header panel
        Examples:
            | NOMEQ              |
            | "EQ-AO0112101-002" |
            | "EQ-AU0121903-001" |

    Scenario: XX1JQ_3_3 - Logout scenario
        Then the user logs-out from the system