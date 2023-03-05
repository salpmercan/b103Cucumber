@parametre
Feature: arama_feature
  Background: Google_sayfasina git
    Given kullanici google gider
@smoke
  Scenario: TC01_google_iphone_arama
# " " future file i parametize etmek icin kullanilir
    When kullanici "iphone" için arama yapar
    Then sonuclarin "iphone" icerdigini dogrula
    Then close the application
  @smoke
  Scenario: TC02_google_tesla_arama
# " " future file i parametize etmek icin kullanilir
    When kullanici "tesla" için arama yapar
    Then sonuclarin "tesla" icerdigini dogrula
    Then close the application
  @smoke
  Scenario: TC03_google_bugatti_arama
# " " future file i parametize etmek icin kullanilir
    When kullanici "bugatti" için arama yapar
    Then sonuclarin "bugatti" icerdigini dogrula
    Then close the application

  Scenario: TC04_google_tea_pot_arama
# " " future file i parametize etmek icin kullanilir
    When kullanici "porselen tea pot" için arama yapar
    Then sonuclarin "porselen tea pot" icerdigini dogrula
    Then close the application

  Scenario: TC04_google_scate_board_arama
# " " future file i parametize etmek icin kullanilir
    When kullanici "skate board" için arama yapar
    Then sonuclarin "skate board" icerdigini dogrula
    Then close the application

