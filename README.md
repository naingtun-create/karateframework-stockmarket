# Financial API Testing with Karate Framework

This project demonstrates how to use the Karate Framework to test financial APIs, specifically the Alpha Vantage API. It includes examples of testing stock data, forex data, and news sentiment analysis.

## Setup

1. Clone this repository
2. Ensure you have Java 8 or higher installed
3. Install Maven if you haven't already

## Configuration

1. Sign up for an Alpha Vantage API key at https://www.alphavantage.co/ (Take note that the Alpha Vantage API key has a max of 25 calls per day + the json data might have different responses sometimes, causing test failures)
2. Add your API key to `application.yml`:

## Running Tests

To run all tests: mvn test
To run specific feature file: mvn test -Dtest=FinancialTest#testStockData

## Features

### Stock Data
- Get daily stock data for Tesla
- Get stock data for multiple companies
- Validate error response for invalid symbol

### Forex Data
- Get exchange rate
- Get intraday forex data
- Validate error response for invalid currency pair

### News Sentiment
- Get news sentiment for a stock
- Get news sentiment for multiple stocks
- Validate error response for invalid ticker

## Contributing
Feel free to fork this repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

## Acknowledgments
Karate Framework
Alpha Vantage API
