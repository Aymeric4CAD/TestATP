@SageX3AutomatedTestPlatform
Feature: XX1JQ_0_DeclenchmentEQviaOF

    Scenario: XX1JQ_0_0 - Connexion
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        Then the user changes the main language code to "fr-FR"


    Scenario: XX1JQ_0_1 - Ouverture fenêtre OF
        Given the user opens the "GESMFG" function
        When the user selects the data table in the popup
        Then the user selects cell with text: "ALL Lancement complet tout saisi" and column header: ""
        And the user clicks on the selected cell
        Then the "Ordres de fabrication ALL : Lancement complet tout saisi" screen is displayed

    Scenario: XX1JQ_0_2 - Remplissage des éléments
        When the user clicks the "Nouveau" main action button on the right panel

        And the user selects the text field with name: "Site planification"
        And the user writes "FR012" to the selected text field
        And the user selects the text field with name: "Site production"
        And the user writes "FR012" to the selected text field and hits tab key

        When the user clicks the "Entête" tab selected by title
        And the user selects the fixed data table of section: "Articles lancés"
        And the user selects last fixed cell with header: "Article"
        And the user adds the text "PF5" in selected cell
        And the user selects last fixed cell with header: "Qté lancement"
        And the user adds the text "2" in selected cell and hits enter key

        #Fill in lead time information
        And the user selects the date field with name: "Date fin"
        And the user writes "30/04/2021" to the selected date field
        # And the user writes today to thse selected date field
        And the user hits tab

        Given an alert box appears with the title "Question"
        Then the user clicks the "Oui" option in the alert box

        And the user hits tab
        And the user hits tab

        # Then the user clicks "Oui" button on the confirmation dialog

        # #Fill in lead time information
        # Given the user selects the text field with name: "Numéro"
        # When the user writes "PF5" to the selected text field and hits tab key
        # Then the user hits tab


        # #Set the operation on the component
        # When the user clicks the "Components" tab selected by title
        # And the user selects the fixed data table for x3 field name: "WR1ALL2_ARRAY_NBLIG"
        # And the user selects row that has the text "RAW903" in column with header: "Component"
        # And the user selects cell with header: "Op." of selected row
        # And the user adds the text "10" in selected cell and hits enter key

        #Create work order
        #Work order used in feature: 0308A-ModalDialogManagement
        And the user clicks the "Créer" main action button on the right panel

        # Given an alert box appears
        # Given a confirmation dialog appears with the message "Message d'information"
        # Then the user clicks "OK" button on the confirmation dialog
        Then an alert box appears with the title "Message d'information"
        Then the user clicks the "OK" option in the alert box


    Scenario: XX1JQ_0_3 - Storing value
        And the user selects the text field with name: "Numéro O.F"
        And the user stores the value of the selected text field with the key: "ENV_NUMEROOF"

    Scenario: XX1JQ_0_4 - Utilisation de la valeur stockée
        When  the user selects the data table of left panel
        And the user selects cell with text: "WOZA0120200" and column header: "No ordre"
        And the user clicks on the selected cell

        And the user selects the text field with name: "Numéro O.F"
        And the user writes the stored text with key "ENV_NUMEROOF" in the selected text field
        And the user hits tab
        And the user selects the text field with name: "Numéro O.F"
        Then the value of the selected text field matches the stored text with key "ENV_NUMEROOF"

    Scenario: XX1JQ_0_4 - Logout scenario
        Then the user logs-out from the system
