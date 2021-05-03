###########################################################################
# Header
# -------------------------------------------------------------------------
# - Test code :  XX1JQ_A1_DeclenchementEQviaOF
# - Description :
#       1) Créer un évènement qualité en partant d'un OF déjà existant
#
# - Created date : 28/04/2021
# - Updated date :
###########################################################################



@SageX3AutomatedTestPlatform
Feature: XX1JQ_1_DeclenchmentEQviaOF

    Scenario: XX1JQ_1_0 - Connexion
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        Then the user changes the main language code to "fr-FR"


    Scenario: XX1JQ_1_1 - Ouverture fenêtre OF
        Given the user opens the "GESMFG" function
        When the user selects the data table in the popup
        Then the user selects cell with text: "ALL Lancement complet tout saisi" and column header: ""
        And the user clicks on the selected cell
        Then the "Ordres de fabrication ALL : Lancement complet tout saisi" screen is displayed

    Scenario: XX1JQ_1_2 - Sélection du bon OF
        # When  the user selects the data table of left panel
        # And the user selects cell with text: "WOFR0121146" and column header: "No ordre"
        # And the user clicks on the selected cell
        # Then the value of the "Numéro O.F" text field is "WOFR0121146"
        Given the user selects the text field with name: "Numéro O.F"
        And the user writes the stored text with key "ENV_NUMEROOF" in the selected text field
        And the user hits tab
        Then the value of the selected text field matches the stored text with key "ENV_NUMEROOF"
    # Then the value of the "Numéro O.F" text field is "WOFR0121146"

    # Then the value of the "Site planification" text field is "FR012"

    Scenario: XX1JQ_1_3 - Selectionner le bouton action de la 2ème ligne du tableau onglet opération
        Given the user selects the fixed data table of section: "Opérations"
        When the user selects row that has the text "10" in column with header: "No"
        Then the user opens "Autres" function on toolbox of the selected row


    Scenario: XX1JQ_1_4 - Selection de "Créer evenement qualité" dans le tableau pop up
        Given the user selects the data table in the popup
        When the user selects cell with text: "Créer Evénement qualité" and column header: "Action"
        And the user clicks on the selected cell
        Then the "Evénements qualité" screen is displayed

    Scenario: XX1JQ_1_5 - Ajout d'un utilisateur en tant que responsable analyste
        Given the user clicks the "Analyse" tab selected by title
        When the user selects the text field with name: "Responsable analyse"
        Then the user writes "FCH" to the selected text field

    Scenario: XX1JQ_1_6 - Création de l'EQ et fermeture de la page
        Then the user clicks the "Créer" main action button on the right panel
        Then the user clicks the Close page action icon on the header panel

    Scenario: XX1JQ_1_7 - Déconnexion
        Then the user logs-out from the system