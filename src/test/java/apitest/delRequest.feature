Feature: Delete request regress

  Background: Preparation
    Given url baseURL
    And print "This is Delete step preparation"

  @test
  Scenario: Test Delete data in regress
    When path '/user/prapti65'
    And method delete
    Then status 200
    And print response