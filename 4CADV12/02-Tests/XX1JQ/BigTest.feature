@SageX3AutomatedTestPlatform
Feature: XX1JQ_BIG_TEST

    Scenario: XX1JQ_0 - Connexion
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        Then the user changes the main language code to "fr-FR"

    Scenario: XX1JQ_1 - Ouverture fenêtre OF
        Given the user opens the "GESMFG" function
        When the user selects the data table in the popup
        Then the user selects cell with text: "ALL Lancement complet tout saisi" and column header: ""
        And the user clicks on the selected cell
        Then the "Ordres de fabrication ALL : Lancement complet tout saisi" screen is displayed

    Scenario: XX1JQ_2 - Remplissage des éléments
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

        And the user clicks the "Créer" main action button on the right panel

        Then an alert box appears with the title "Message d'information"
        Then the user clicks the "OK" option in the alert box


    Scenario: XX1JQ_3 - Storing value
        And the user selects the text field with name: "Numéro O.F"
        And the user stores the value of the selected text field with the key: "ENV_NUMEROOF"

    Scenario: XX1JQ_4 - Utilisation de la valeur stockée
        When  the user selects the data table of left panel
        And the user selects cell with text: "WOZA0120200" and column header: "No ordre"
        And the user clicks on the selected cell

        And the user selects the text field with name: "Numéro O.F"
        And the user writes the stored text with key "ENV_NUMEROOF" in the selected text field
        And the user hits tab
        And the user selects the text field with name: "Numéro O.F"
        Then the value of the selected text field matches the stored text with key "ENV_NUMEROOF"

        Then the user clicks the Close page action icon on the header panel


    Scenario: XX1JQ_5 - Ouverture fenêtre OF
        Given the user opens the "GESMFG" function
        When the user selects the data table in the popup
        Then the user selects cell with text: "ALL Lancement complet tout saisi" and column header: ""
        And the user clicks on the selected cell
        Then the "Ordres de fabrication ALL : Lancement complet tout saisi" screen is displayed

    Scenario: XX1JQ_6 - Sélection du bon OF
        Given the user selects the text field with name: "Numéro O.F"
        And the user writes the stored text with key "ENV_NUMEROOF" in the selected text field
        And takes a screenshot
        And the user hits tab
        Then the value of the selected text field matches the stored text with key "ENV_NUMEROOF"


    Scenario: XX1JQ_7 - Selectionner le bouton action de la 2ème ligne du tableau onglet opération
        Given the user selects the fixed data table of section: "Opérations"
        When the user selects row that has the text "10" in column with header: "No"
        Then the user opens "Autres" function on toolbox of the selected row


    Scenario: XX1JQ_8 - Selection de "Créer evenement qualité" dans le tableau pop up
        Given the user selects the data table in the popup
        When the user selects cell with text: "Créer Evénement qualité" and column header: "Action"
        And the user clicks on the selected cell
        Then the "Evénements qualité" screen is displayed

    Scenario: XX1JQ_9 - Ajout d'un utilisateur en tant que responsable analyste
        Given the user clicks the "Analyse" tab selected by title
        When the user selects the text field with name: "Responsable analyse"
        Then the user writes "FCH" to the selected text field

    Scenario: XX1JQ_10 - Création de l'EQ et fermeture de la page
        Then the user clicks the "Créer" main action button on the right panel
        Then the user clicks the Close page action icon on the header panel


    Scenario: XX1JQ_12 - Logout scenario
        Then the user logs-out from the system