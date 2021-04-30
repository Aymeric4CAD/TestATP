@SageX3AutomatedTestPlatform
Feature: XX1JQ_4 - ConsultationEQs

    Scenario: XX1JQ_4_1 - Login scenario
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        And the user changes the main language code to "fr-FR"

    Scenario: XX1JQ_4_2 - Ouverture de la fonction et consultation des EQs
        Given the user opens the "GESXX1JQXIN" function
        When the user selects the text field with name: "Evénement qualité"
        And the user writes "EQ-FR0122104-018" to the selected text field and hits tab key
        And the user stores the value of the selected text field with the key: "ENV_NUMEQ"
        And the user selects the text field with name: "Site"
        And the user stores the value of the selected text field with the key: "ENV_SITE"

    Scenario: XX1JQ_4_3 - Gestion panel actions de droite
        #Right panel action: open the header drop down
        Given the user opens the header drop down

        #Right panel action: open the required section of the header dropdown
        When the user opens the "Générer pièces" section on the right panel
        Then the "OF de retouche" action button on the header drop down is disabled

        Given the "Ordre de fabrication" action button on the header drop down is enabled
        And the user clicks the "Ordre de fabrication" action button on the header drop down
        When the user selects the data table in the popup
        And the user selects cell with text: "ALL Lancement complet tout saisi" and column header: ""
        And the user clicks on the selected cell
        Then an alert box appears with the title "Question"
        Then the user clicks the "Oui" option in the alert box


    Scenario: XX1JQ_4_4 - Vérification des valeurs remplies automatiquement dans l'écran OF
        Given the "Ordres de fabrication ALL : Lancement complet tout saisi" screen is displayed

        When the user selects the text field with name: "Site planification"
        Then the value of the selected text field matches the stored text with key "ENV_SITE"

    # When the value of the "EQ d'origine" text field is "EQ-FR0122104-018"
    # Then the user selects the text field with name: "EQ d'origine"
    # Then the value of the selected text field matches the stored text with key "ENV_NUMEQ"
    # Then the selected text field should be disabled
    # Then the value of the "EQ d'origine" text field is "EQ-FR0122104-018"

    Scenario: XX1JQ_4_7 - Logout scenario
        Then the user logs-out from the system