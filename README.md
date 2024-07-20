# Stock Market API Test Suite

## Project Overview

This project demonstrates the use of Karate Framework to test a real-world financial API, specifically the Alpha Vantage API. The test suite covers various endpoints and functionalities related to stock market data, technical indicators, and financial news.

## Background

In the fast-paced world of financial technology, reliable and up-to-date market data is crucial. APIs that provide this data need to be thoroughly tested to ensure accuracy, reliability, and performance. This project showcases how to effectively test such APIs using the Karate Framework, a popular open-source tool for API testing.

## Problem Statement

Financial institutions, fintech startups, and individual investors rely on stock market APIs to make critical decisions. However, these APIs can be complex, with multiple endpoints, authentication requirements, and data formats. The main challenges include:

1. Ensuring the accuracy of real-time and historical stock data
2. Validating complex financial calculations like technical indicators
3. Handling large volumes of data efficiently
4. Maintaining test suites that can adapt to frequent API updates
5. Verifying the timeliness and relevance of financial news and sentiment data

This test suite aims to address these challenges by providing a comprehensive set of automated tests that cover various aspects of the Alpha Vantage API.

## Features Tested

- API Authentication
- Real-time Stock Quotes
- Historical Stock Data
- Technical Indicators (e.g., Moving Averages)
- Company Fundamentals
- Market News and Sentiment Analysis
- Forex Exchange Rates

## Karate Framework Features Showcased

- API calls (GET, POST)
- JSON parsing and validation
- Data-driven testing using CSV files
- Background setup for reusable configurations
- Parameterization
- Response matching and assertions
- Custom JavaScript functions for complex validations
- Parallel test execution
- Reusable feature files

## Setup and Execution

### Prerequisites

- Java JDK 11 or higher
- Maven 3.6 or higher
- Git

### Steps to run the project:

1. Clone the repository: git clone https://github.com/yourusername/stock-market-api-tests.git
2. Navigate to the project directory: cd stock-market-api-tests

3. Sign up for a free API key at [Alpha Vantage](https://www.alphavantage.co/)

4. Update the `apiKey` in `src/test/resources/karate-config.js` with your Alpha Vantage API key

5. Run the tests using Maven: mvn test

### Running specific tests:

To run a specific feature file: mvn test -Dtest=TestRunner#testStockQuote where testStockQuote is a test function within TestRunner.java

## Reporting

After test execution, you can find the Karate report in the `target/karate-reports/` directory. Open the `karate-summary.html` file in a web browser to view the detailed test results.

## Continuous Integration

This project is set up to work with GitHub Actions for continuous integration. The workflow file `.github/workflows/maven.yml` is included in the repository. It will automatically run the tests on every push to the main branch and pull requests.

## Contributing

Contributions to this project are welcome! Please follow these steps:

1. Fork the repository
2. Create a new branch for your feature or bug fix
3. Make your changes and commit them with descriptive commit messages
4. Push your changes to your fork
5. Submit a pull request to the main repository

Please ensure that your code follows the existing style and include appropriate test coverage for new features.

## License

This project is open-source and available under the MIT License.

## Contact

If you have any questions or feedback, please open an issue in the GitHub repository.
