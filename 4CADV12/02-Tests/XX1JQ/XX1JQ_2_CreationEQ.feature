###########################################################################
# Header
# -------------------------------------------------------------------------
# - Test code :  0201A-FinishedProductCreation
# - Description :
#       1) Creation of Finished product.
#
# - Created date : 18/11/2020
# - Updated date :
###########################################################################

@SageX3AutomatedTestPlatform
Feature: XX1JQ_2 - CreationEvenementQualite

    Scenario: XX1JQ_2_1 - Login scenario
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        #     # And the user waits 3 seconds
        And the user changes the main language code to "fr-FR"
    # And the user selects the "param:endPointName1" entry on endpoint panel
    # Then the "param:endPointName1" endpoint is selected
    # When the user selects the "RD4CADV12" entry on endpoint panel
    # Then the "RD4CADV12" endpoint is selected

    Scenario: XX1JQ_2_2 - Creation Evénement Qualité
        Given the user opens the "GESXX1JQXIN" function
        When the "Evénements qualité" screen is displayed
        Then the user clicks the "Nouveau" main action button on the right panel

    Scenario: XX1JQ_2_3 - Remplissage onglet en-tête
        When the user selects the text field with name: "Site"
        And the user writes "FR012" to the selected text field
        And the user hits tab
        Then the value of the "Origine" text field is "I"
        # Given the user selects the date field with name: "Date Evénement"
        # When the user writes month: "M" day: "D" and year: "Y" to the selected date field

        Given the user selects the drop down list with name: "Type"
        #ATTENTION DOUBLE ESPACE APRES "fabrication"
        When the user clicks on "Ordre de fabrication  En-tête" option of the selected drop down list
        When the user selects the text field with name: "Article impliqué"
        Then the user writes "PF5" to the selected text field

    Scenario: XX1JQ_2_4 - Remplissage onglet Analyse
        Given the user clicks the "Analyse" tab selected by title
        When the user selects the text field with name: "Responsable analyse"
        Then the user writes "FCH" to the selected text field

    Scenario Outline: XX1JQ_2_5
        Given the user selects the data table of section: "Actions"
        When the user selects last editable cell with column header: "Action modèle"
        And the user adds the text <NOM_ACTION> in selected cell
        Then the user hits enter

        Examples:
            | NOM_ACTION |
            | "AM-0004"  |
            | "AM-0010"  |


    Scenario: XX1JQ_2_6 - Création de l'EQ et fermeture de la page
        #Confirmation création
        And the user clicks the "Créer" main action button on the right panel
        #Close the function
        Then the user clicks the Close page action icon on the header panel

    Scenario: XX1JQ_2_7 - Logout scenario
        Then the user logs-out from the system