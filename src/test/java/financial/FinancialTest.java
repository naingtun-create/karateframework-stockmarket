package financial;

import com.intuit.karate.junit5.Karate;

class FinancialTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    // @Karate.Test
    // Karate testStockData() {
    // return Karate.run("features/forex-data").relativeTo(getClass());
    // }

    // @Karate.Test
    // Karate testForexData() {
    // return Karate.run("features/forex-data").relativeTo(getClass());
    // }

    // @Karate.Test
    // Karate testNewsSentiment() {
    // return Karate.run("features/news-sentiment").relativeTo(getClass());
    // }
}