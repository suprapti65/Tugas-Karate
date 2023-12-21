Feature: Test get request

  Background: Setup Data
    Given url baseURL
    And print "========= Ini test Get Data ========"
    # define location schema
    * string jsonSchemaExpected = read('file:src/test/java/apitest/schema/getschema.json')

    # Get list user and assert status
  Scenario: User get list users page 1
    When path '/user/prapti65/'
    And method get
    Then status 200
    And print response

  @get @test
  Scenario: User get user data using id
    # declare variable userid
    * def userid = 112233445566

    # path
    When path '/user/prapti65'
    # http request method
    And method get
    # get status
    Then status 200
    # Assertion body response : id
    And print response
    And assert response.data.id == userid
    And assert response.data.firstName == 'prapti'
    # assert data.avatar is not null
    And match response.data contains { "password": '#notnull'}
    # assert jsonschema validation
    And match response == '#object'
    * string jsonData = response
    # location file JSONSchemaUtil in folder plugins
    * def SchemaUtils = Java.type('plugins.JSONSchemaUtil')
    * assert SchemaUtils.isValid(jsonData, jsonSchemaExpected)

