Feature: Search Graduating Students
  Background:
    Given an environment variable provides an S3 URL

@javascript
Scenario: 
  Given the S3 URL has a list of student names
  When the user types "Graduating Stud" into the search box
  Then the interface presents "Graduating Student" as the first autocomplete option
