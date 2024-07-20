Feature: Forex Data API Tests

Background:
  * url baseUrl
  * param apikey = apiKey

Scenario: Get Exchange Rate
  Given param function = 'CURRENCY_EXCHANGE_RATE'
  And param from_currency = 'USD'
  And param to_currency = 'EUR'
  When method get
  Then status 200
  And match response.['Realtime Currency Exchange Rate'].['1. From_Currency Code'] == 'USD'
  And match response.['Realtime Currency Exchange Rate'].['3. To_Currency Code'] == 'EUR'
  And match response.['Realtime Currency Exchange Rate'].['5. Exchange Rate'] != null

Scenario Outline: Get Intraday Forex Data
  Given param function = 'FX_INTRADAY'
  And param from_symbol = <from>
  And param to_symbol = <to>
  And param interval = '15min'
  When method get
  Then status 200
  And match response.['Meta Data'].['1. Information'] contains 'FX Intraday'
  And match response.['Meta Data'].['2. From Symbol'] == <from>
  And match response.['Meta Data'].['3. To Symbol'] == <to>
  And match response.['Time Series FX (15min)'] != null

  Examples:
    | from  | to    |
    | 'EUR' | 'USD' |
    | 'GBP' | 'JPY' |

Scenario: Validate Error Response for Invalid Currency Pair
  Given param function = 'CURRENCY_EXCHANGE_RATE'
  And param from_currency = 'USD'
  And param to_currency = 'INVALID'
  When method get
  Then status 200
  And match response.['Error Message'] == '#notnull'