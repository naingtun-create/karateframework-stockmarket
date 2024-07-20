Feature: News Sentiment API Tests

Background:
  * url baseUrl
  * param apikey = apiKey

Scenario: Get News Sentiment for a Stock
  Given param function = 'NEWS_SENTIMENT'
  And param tickers = 'AAPL'
  When method get
  Then status 200
  And match response.feed != null
  And match response.feed[0].title != null
  And match response.feed[0].url != null
  And match response.feed[0].time_published != null
  And match response.feed[0].authors != null

Scenario Outline: Get News Sentiment for Multiple Stocks
  Given param function = 'NEWS_SENTIMENT'
  And param tickers = <tickers>
  When method get
  Then status 200
  And match response.feed != null
  And match response.feed[*].ticker_sentiment[*].ticker contains <ticker>
  And match response.feed[*].ticker_sentiment[*].relevance_score != null
  And match response.feed[*].ticker_sentiment[*].ticker_sentiment_score != null

  Examples:
    | tickers     | ticker |
    | 'AAPL,MSFT' | 'AAPL' |
    | 'GOOGL,AMZN'| 'AMZN' |

Scenario: Validate Error Response for Invalid Ticker
  Given param function = 'NEWS_SENTIMENT'
  And param tickers = 'INVALID'
  When method get
  Then status 200
  And match response.['Error Message'] == '#notnull'