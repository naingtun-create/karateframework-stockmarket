Feature: Stock Data API Tests

Background:
  * url baseUrl
  * param apikey = apiKey

Scenario: Get Daily Stock Data for Tesla
  Given param function = 'TIME_SERIES_DAILY'
  And param symbol = 'TSLA'
  When method get
  Then status 200
  * print 'Response:', response
  And match response.['Meta Data'].['2. Symbol'] == 'TSLA'
  And match response.['Time Series (Daily)'] != null
  And match response.['Time Series (Daily)'][*].['1. open'] != null

Scenario Outline: Get Stock Data for Multiple Companies
  Given param function = 'GLOBAL_QUOTE'
  And param symbol = <symbol>
  When method get
  Then status 200
  And match response.['Global Quote'].['01. symbol'] == <symbol>
  And match response.['Global Quote'].['05. price'] != null

  Examples:
    | symbol |
    | 'AAPL' |
    | 'GOOGL' |
    | 'MSFT' |

Scenario: Validate Error Response for Invalid Symbol
  Given param function = 'GLOBAL_QUOTE'
  And param symbol = 'INVALID'
  When method get
  Then status 200
  And match response.['Error Message'] == '#notnull'