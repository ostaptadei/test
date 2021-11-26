Feature: Award Winning Solutins` Blocks Behavior

  Background: 
    Given Life sciences page is opened

  Scenario: User hovers over Award block
    Given Award Winning Solution section
     And blocks with Winning solutions
    When hover over any block 
    Then rollover tab with short info covers block
  
  Scenario: User removes cursor from the Award block
    Given Award Winning Solution section
      And some Winning solution block is hovered over
      And rollover tab with short info covers block
    When cursor is removed from the block
    Then rollover tab is hidden
      And block with Winning solutions is visible

Feature: Background video Volume button behaviour

  Background: 
    Given Consult&Design page is opened

  Scenario: User turns on sound
    Given mutted background video playback
      And Volume mute button 
    When Volume mute button is clicked
    Then sound is unmuted 
      And Volume mute button is replaced by Volume high button

  Scenario: User turns off sound 
    Given unmuted background video playback
      And Volume high button
    When Volume high button is clicked
    Then sound is muted 
      And Volume high button is replaced by Volume mute button

Feature: Navigation pannel behaviour

  Scenario: User clicks Contact us button
    Given homepage is opened
    When click on Contact Us button 
    Then redirected to Contact page

  Scenario Outline: User changes Language and region selection
    Given homepage is opened
    When click on location selector button
      And click on another location selector link
    Then redirected to the localized page
      And homepage is translated 
    Examples:
      |location |location link |
      |Global(English) |https://www.epam.com/ |
      |Україна(Українська) |https://careers.epam.ua/ |
      |Polska(Polski) |https://careers.epam-poland.pl/ |
      
Feature: Site search behavior

  Background: 
    Given search icon is clicked
      And search tab is rolled over

  Scenario: User views frequent searches
    Given empty input form
    When click on input form
    Then frequent searches list is displayed

  Scenario: User looks for some custom info 
    Given empty input form
    When click on input form
      And enter input info
      And press find
    Then redirected to result page
      And appropiate results of search are shown


