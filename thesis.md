
# Introduction


The project is a working Python program that uses Principle Component Analysis (PCA) in order to evaluate potential times to create buy and sell orders.  The program uses the Binance API to collect real-time data stored in a file.  The file is then organized into columns that then can be called for future use.  There are eleven different data points that I am looking at in my research.  Later in the paper, I will discuss and justify why I chose these eleven.  The data is then pulled from the file.  It is applied to the PCA model where the eleven values are reduced into values that can be placed on a graph.  

Graphs are then created to display the information collected on the cryptocurrency.  Using Plotly graphs, the program is able to create graphs to display the mean and distribution of positive and negative values.  From this, a user is able to determine the best times when to invest and when not to.  This is important because any edge trading in the market will lead to a competitive advantage causing potential monetary gain.  It is a possible solution to accurately analyze the market.

Challenges have arouse throughout this research.  For instance, I needed to decide how large of a research project I could make this.  Looking through what other people had research, I narrowed down my data so that I could focus on the data with the amount of time I had.  I also had problems with doing this since it is new technology.  There is not much information on how to do work with some of the packages I implement into my program.  For this reason, I had to do most of the figuring out how the tools worked on my on.

The ethical considerations for this project include how this would affect the market.  Having something that was proven successful like this could lead to an unfair advantage.  This would, if done on a large enough scale, could disrupt the market that the program had studied.  This would make the program not invest based on the new market but invest in the one it had studied.  This might cause problems with the program.  Another ethical consideration is how users would overuse a system like this and potentially crash the entire network.  If something like this became too popular and the Binance infrastructure is unable to support the traffic, it could lead to issues.  Looking at these issues closely in the paper will reveal how I addressed issues in my research.

## Section 1 Completed Work
### Binance API and Data Collected

The Binance API offers a lot of tools for me to work with to gather the necessary data.  To connect to the Binance API, a developer account is first needed to connect to their servers.  To apply for this, it is required that a user must make an account and submit a form.  Once the form is submitted, it is accepted and a programmer is able to use the tool.  When a new project is created through Binance, an API key and secret key are generated to identify the tool.  These keys are added to a Python script that holds them so they can be accessed by the main Python program.  Both of these keys ensure secure access to the Binance servers where traffic and queries can be tracked.  

It is important to note the limitation of the API as well.  There is a 1200 request per minute limit.  Also, ten orders per second limit the number of requests that can be made.  This has to be considered when making a program.  A program must not call the API server too often otherwise data will stop being sent.  A timer needs to be implemented into the program so that the program will only call the servers so many times a second.  Depending on the number of requests the program has, the number of seconds between requests must be changed.  

It is also good practice to close the connection to the API server when the program is finished running.  This prevents the connections from staying open and the Binance server from constantly sending the same data repeatedly.  The open and close times of the Klines are used to separate the different times in the data from each other.  Data collected is then simplified with all of the open and close times.  This concise data can be broken down into specific time segments.  

Working with the API allows for a multitude of information to be gathered.  For instance, the candlestick charts that are displayed on their website can be gathered.  This allows for a lot of data to be collected from the market.  Market open values can be gathered in USD so it can be stored for later.  Gathering this data allows for marking the opening price of the market during that k-line.  

Another variable that is collected is the high price of the k-line.  This is needed so that the program can determine the times of the highest price during the given time period.  The low is also needed so that it can be compared to the high.  They are used for calculations later in the program.  USD close price is also needed so that it can be compared to the open price.  This is also used later in the machine learning algorithm.  

The volume of the trades is something that is also collected from the Binance API.  This is necessary in order to see the total number of contracts that were exchanged between buyers and sellers.   It is important to collect this information because it is a measure of the market's activity and liquidity.  This is also important because, on coins that are traded less often, it is important to know the size of the data collected. The quote asset volume is also something that must be collected from the API.   This tells us the amount of money the payer sent during a transaction.  

It is important to note that this is before the transaction fees of the exchange are taken out.  This also is another good indicator of a crypto’s liquidity.  Something else that the program needs is the number of transactions actually occurring on the network.  It is important to take this information into account since it indicates how active the coin is.  This is something that is used when displaying the hours that are the frequently most traded.  It is something that also is a good indicator of the liquidity of the coin.  

Another variable that is useful to study market information is the Taker Buy Sell Volume ratio or TBBAV.  This is a great indicator that the market is rising or falling.  Say, for instance, the value returned is over one, this would mean that a buyer has bought someone else’s coins.  It indicates that more buyers are willing to pay more for coins.  This means that it is a bullish sentiment telling the program when a good time to invest is.  Values under one show that more people are selling coins rather than buying.  This means that the price of the coin is being driven down due to fewer people buying.  This indicates a bearish sentiment for the program.  It is a time when it is not best to invest.  

The Final thing that is collected from the Binance API is the total buy quantity.  The data shows the total number of bought coins and buy orders on the marketplace.  This is another great indicator of liquidity.  It shows if a coin is active or not.  Collecting this data is important because later on it can be used in the machine learning algorithm to learn the market.

![Sample Data Output[@connelly2023research]](images/sample output.jpg)
Data is listed in tables as described above.

### Sorting and Cleaning Data
	
The first thing that is done to the data is that it is stored.  The file is generated specific to the coin the data is from.  This makes it easy for humans to read the data if they wanted to do it manually.  The data is added to the CSV files and given column header names.  These names are used to also help the files become more human readable.  This also doubles as column headers names that the program can work with later on.  

### Working With the Data

Once the data is gathered from the Binance API and normalized, it can now be used in the program.  The files are first read in to the Python program.  This is does each times separately for each coin.  This allows us control over seeing a coin’s market data specifically.  It is important step of the program which allows separation of coins so that markets can be studied individually.  The program takes a few seconds to preproccess the data.  Once this is done, data must now be loaded into data frames.  For variables like open time and close time, it is also necessary to do a little preprocessing.  This is because the data collected off of the Binnance API is not the the easiest for a program to read.  The data must be normalized first into a standard format so that it is easier to work with the data later.  The same thing must be done for the variable time too.  However, this is something that just cannot be pulled from the Binnance API.  First the open variable is added on to the respective hours that have passed since the last check.  This is then divided by the close time.  This gives our data frames something to reference when going back to check the data.

The machine learning algorithm is able to now be loaded with data. Using the sklearn package we are able to use some machine learning algorithms without doing much of the behind the scenes work.  This is nice because it is just another thing that I do not have to focus on implementing myself.  Loading the data, is as simple as taking the data frame and shoving the data into it.  From here, we are first able to start working with the PCA model.  It is important to note what the Principle Component analysis model does.  

It first starts by normalizing the data.  While we had already done this before,  it must be done again so that none of the data points will dominate over another.  This is necessary so that the information that we collect is not skewed.  The next step is a covariance matrix computation.  This is so that we can see if there are any correlated information between the points.  So the program applies the data to the matrix.  In the program, it is important to note that we are only storing two components in the matrix.  The covariances tell us about the data a few things.  If the number is positive, the two data points increase of decrease with each other.  However, if it is negative, one would increase while the other data point decreases.  This highlights the correlation between between the pairs.  

The next step of the PCA model is computing the eigenvectors and eigenvalues.  It is important to note that there is an issue after the principal components are created.  Most of the data points are compressed into the first component.  This is because most of the data is not correlated with the initial data.  However, it is important to organize the data this way because it is a great way to reduce the dimensions of data with out losing much information.  By discarding the low correlated data, it removes a lot of noise in the data.  The PCA model constructs the principal components by first looking at the largest possible variance.  It then checks perpendicularly for the next highest variance.  This does this for all of the number of variables.  In our two dimensional matrix now, we are now able to rank the eigenvalues.  This is done by dividing the the eigenvalues of each of the components by the sum of the eigenvalues.  This is done for all of the data points.

![PCA Model Example[@connelly2023research]](images/pca.png)
PCA provides dimensionality-reduction great for the data being used in my research.  

Now that the eigenvalues are in descending order, it will allow the program to find the components in order of significance.  Each of the eigenvectors are transformed in the program.  This is so that each component can be filter by usefulness.  The eigenvector with lesser significance will be removed from the PCA model.  It is important to note that doing this does create some data loss.  While this is important to take into consideration, the amount that was lost is not really a relevant problem.  

The final step of the PCA model is the recast the data along the component’s axes.  This is done to reorganize the data so that it corresponds to the original axes. It is important to do this so that graphs can be compared to each other over time.  Once the data is standardized, we can not work on displaying the information.

### Displaying the Information

One the PCA model is complete the data is ready to displayed in a human readable format.  This is done using a custom graph using the Python package Plotly.  This is a great tool is visualize the data is a easy to read format for the tool’s user.  The first graph that is generated is the mean of all of the data.  This is a good way to figure out what the averages of all of the points are.  The next graph that is generated is the median.  This is something is also good to visualize the data.  The third and final graph that is created is the graph that is the most useful to visualize the data.  This graph shows the points when investing during that time frame would be profitable or not.  This is shows as a heat map where the times that a person would have made negative money on the left and the positive money on the right.  This can be view and worked with to determine the most efficient and effective way to invest.

![Basic Sample Graph[@connelly2023research]](images/graph2.png)
 - This graph is basic as it just displays all of the points the PCA model returned.  While a good start, there are better ways to display the information.

![Sample Heat Map From Data[@connelly2023research]](images/sample graph1.jpg)
 - This graph is more comprehensive than Figure 3.  This represents the data in a more concise way for a user to view. The right side represents the times when if someone would have invested they would have made money.  The inverse in true for the left side. 

## Motivation

The motivation for the project is the every increasing presence of cryptocurrency in our world.  As the technology develops, more and more uses for it are discovered.  Early research and development of tools like this are both something that is cutting edge.  Cryptocurrency markets behave similar to traditional stock markets.  However,  they are much more volatile as trading never stops.  Research like this stand to gain a better understanding of how these markets work. Bitcoin prices have grown more than 120% in 2016, reaching to a level of more than $20,000 from $900 in the year 2017. [@akyildirim2021research] As such, it has been experiencing an increase in possibilities for investors to make far greater gains than any other financial asset class.

![Top Four Traded Coin's Market Activity[@akyildirim2021research]](images/market.png)
[@akyildirim2021research] - This shows that there is a future in cryptocurrency.  This is indicated by the increase of use of BTC, LTC, XRP, and ETH.

There are several real world potential justifications for creating a cryptocurrency prediction machine learning program to study the market. One is that it could help investors make more informed decisions about when to buy or sell different cryptocurrencies. Another is that it could help traders identify patterns and trends in the market that they might not otherwise be able to detect. Additionally, a machine learning program could potentially be used to analyze large amounts of data more quickly and accurately than a human could, which could lead to more accurate predictions about the future price of different cryptocurrencies.

Using Principal Component Analysis (PCA) in conjunction with a machine learning model for cryptocurrency prediction could be beneficial in several ways.

PCA is a technique that is used to reduce the dimensionality of a dataset by identifying the underlying patterns or features that explain the most variance in the data. This can be useful in the context of cryptocurrency prediction because it can help to identify the most important factors that influence the price of a given cryptocurrency.

By incorporating PCA into the machine learning model, the model may be able to learn from a smaller set of features, which can improve the model's performance and reduce the risk of overfitting. Additionally, PCA can help to identify correlations between different features in the dataset, which can help to identify which features are most important for making accurate predictions.

Therefore, using PCA in conjunction with a machine learning model for cryptocurrency prediction can help to improve the model's performance by reducing the dimensionality of the dataset, identifying the most important features, and uncovering the underlying patterns or relationships in the data.

## Goals of the Project

The goal of this project is to predict and forecast the close price of Ethereum and Bitcoin. This will help reduce risk in the cryptocurrency market. I have collected and analyzed historical data from https://binance.us/ to find patterns that can be used to make predictions about future prices. Because these currencies are highly volatile, it may not always be possible to model their respective data accurately using a PCA machine learning approach alone; this is why I explored multiple graphs and ways to represent our findings throughout the paper.

A great way to evaluate this is to look at the return on investment (ROI) for a given investment strategy. For example, if an investor uses the tool to make predictions about the price of a particular cryptocurrency and then buys or sells that cryptocurrency based on those predictions, the ROI can be calculated by comparing the final value of the investment to the initial investment. A higher ROI indicates that the model is helping the investor to make more profitable trades.  This would make this tool viable in investment strategies.

## Ethical Implications

One of the Ethical considerations of this tool is that machine learning models can be used to make predictions about future prices of cryptocurrencies, they can also be used to manipulate the market. For example, a group of investors could use a machine learning model to make predictions about the price of a particular cryptocurrency, and then use that information to manipulate the market and make a profit.  While examples of this have happened before in the stock market, it is almost guaranteed that it will happen in the crypto currency field.

Another ethical implication is when using the PCA technique, it reduces the dimensionality of a dataset, but it can also makes it more difficult to understand how the model is making predictions. This lack of interpretability can be a concern when it comes to making decisions about financial investments, as it can be difficult to know whether the predictions made by the model are accurate or not.  It also makes finding any specific issues with the data challenging as all of the values are combined together.

Another problem with technology like this is overuse.  While a few people doing research does not really effect the market, if a tool like this was used by enough people, it could cause the market to become even more unstable.  This would be because if everyone was being told to invest and withdraw their money at the same time, it breaks the market.  While this problem would kind of take care of itself.  This is because the market the program is build for would no longer exist making the tool obsolete.  This is something that is again very unlikely, but worth considering.  A great way to work around this is to make this open source and available to everyone.  If no one owns this technology, no one person can profit from it.

With the heavy increase of cryptocurrency attention, it has also drawn the eyes of the government.  If market regulations were put into place in the future, with would without a doubt change the market forever.  The use of PCA based models for cryptocurrency prediction may be subject to regulations, and it is important to be aware of and comply with any relevant laws or regulations created in the future.

# Related Work
## Positive Research Findings

One of the related works that I have taken a look at was the research done by the Annals of Operations Research team.  The study used machine learning to take a look at twelve different coins.  Using four different classification algorithms, it predicted future market activity.  They found from this that they were accurately able to predict future market activity 70% of the time in the short term. [@akyildirim2021research] This proves that a profitable algorithm is achievable.  I reviewed this study for my own research and applied my own similar techniques to analyze.  For instance, when considering the data that I needed to collect, consulting this study was valuable in my research. In the study, Using machine learning for cryptocurrency trading, the scope of the research looked at different Twitter and market activity for Bitcoin, Ethereum, Ripple, and Litecoin. [@sun2019research] This study used a neural network to determine market indicators.  They found that it was able to accurately predict market activity using this data.  What I found interesting in this study is that each of the different coins had different success rates.  This demonstrates that different coins have different social environments that could be hard to predict.  Another thing to note is that the market activity and social indicators are combined.  This leaves some questions about what really affects the market.  I considered this in my research when determining the scope of my project.  I decided that I wanted to narrow down my research to market activity. 

My project was influenced by the study, Forecasting cryptocurrency prices time series using machine learning approach, due to the fact it was doing a different machine learning model.  The study took a look at collecting the data and using a Binary Auto Regressive Tree (BART) instead of a PCA model like in this one.[@vasily2019research]  It took a look at Bitcoin, Ethereum, and Ripple.  The study found that the longer the data set the model was predicting, the more accurate it became.  This made me consider the time frame that I wanted to focus on for my project.  I decided that I wanted to focus on more short-term predictions.  While something like this has been proven to be effective in the run, my research is more focused on short-term profit.  I wanted to see if it would be profitable to trade with a trading algorithm in the short run.The article, Machine learning algorithm for cryptocurrencies price prediction, demonstrated that it was possible to predict future market activity using machine learning.  It used Long Short-Term Memory (LSTM) to build the cryptocurrency price prediction model. [@awotunde2021research] In the closing notes for the study, it takes about future work that could be done to improve their research.  This was considered in my research.  For example, it helped determine what machine learning model was used in this research.  I rescoped my project to improve the effectiveness of understanding market activity.  Introducing structure to the way the data is collected removes uncertainty in the volatility of the market.

The project, Machine learning the cryptocurrency market, helped me figure out the scope of my project.  It studied 1,681 currencies using two different models.  The first one was long short-term memory models which it was found to be effective at predicting.  The other was a Batesian neural network. [@alessandretti2018research] While this study found that machine learning was able to predict market activity, it looked at way too many subjects for my research here.  Just to keep the scope of the project doable it was decided that this research would focus on just two currencies.  It also made me take into account transaction fees when trading.  This is important because it is something that must be overcome if profitable trading is going to be achieved.  I decided that this is something that I would like to examine in my own research. 

![Cumulative Returns Found In Study [@akyildirim2021research]](images/research1.png)
The cumulative returns obtained under the Sharpe ratio optimization (a) and the geometric mean optimization
(b) for the baseline (blue line), Method 1 (orange line), Method 2 (green line), and Method 3 (red line). Analyses are performed considering
prices in BTC. [@akyildirim2021research] 



The research paper, Ascertaining price formation in cryptocurrency markets with machine learning, looked at short-term trading with machine learning algorithms.  It used a Long-Short-Term-Memory model to take in data and create price predictions.  The findings from using this model were that it was 78% effective at predicting the market. [@fang2021research] One thing that was noted was that due to the scope of the research the neural network did not have much data to train on.  This possible could lead to incorrect financial predictions.  To deal with this in my research, I will look at multiple days at multiple times to gather as much information as possible.  I think this will lead to a more thorough understanding of how market activity is affected. The research paper, A deep learning-based cryptocurrency price prediction scheme for financial institutions, focused on only two currencies, Litecoin and Monero.  However, it was noted in the paper that this research could be adapted to other cryptocurrencies.  It looked at the viability of using two different machine learning models Recurrent Neural Network and Long Short-Term Memory.  Both were applied to both of the coins.  The study found that the proposed schemes are able to accurately predict prices. [@patel2020research] This was promising research as it proved that it was possible to have a model that predicts and trades profitably.  I learned from this article and applied it to my research.  For instance, it made me consider the time frame that I should have for my research. This led to me wanting to work on more of a short-term project that looked at price predictions.

The study, Predicting Ethereum prices with machine learning based on Blockchain information, differentiates itself by taking just a look at Ethereum.  It used machine learning models to reveal that it is possible to predict Ethereum prices using economic factors.  The study noted that Ethereum and Bitcoin have different movement patterns.  This would create a difference in the techniques needed to predict currency prices.  The study also found that maco-economic facts significantly improve the prediction accuracy of Ethereum prices. [@kim2021research] Two different machine-learning techniques were applied to the data.  From the findings, the researchers found that trading with consideration of Blockchain information was profitable.  This is something that I considered for my own research.  I was able to learn from this to be able to choose the variables I needed for my research. The paper, Comparative performance of machine learning algorithms for cryptocurrency forecasting, had a strong focus on studying the performance of machine learning algorithms.  The researchers looked at six different cryptocurrencies to study the market data. It compared Support Vector Machines (SVM) and Artificial Neural Networks (ANNs).  SVM was proven to be the most accurate in being able to predict market movements at 95.5% accuracy. [@hitam2018research] This study proved that by using machine learning, it is possible to predict future price movements.  Adapting what they learned in my research, I have considered the options of my machine learning algorithm.  After careful consideration, I decided to focus my research on PCA models.


## Research That Failed

The article, An approach to predict and forecast the price of constituents and index of cryptocurrency using machine learning, takes a look at Bitcoin, Digital Cash, and Ripple and uses four different neural networks to forecast the price.  Most of the models were not that successful at predicting market activity. [@chowdhury2020research] However, one model was 92.4% accurate at creating profitable trades.  This paper made me consider what to look at when gathering my data to use for predictions.  For instance, it made me look at different variables that I would include in my research.  Different models had varying successes but all used the same variables.  This means that this can be translated into a different model to the usefulness of it.  This research made me consider what to include and take a look at for this project. Automated cryptocurrencies prices prediction using machine learning looks at a few different currencies using a  Long Short-Term Memory model.  This study looked at the short-term viability of predictions.  After studying seven cryptocurrencies, the researchers determined that if they used more information, the study would be more accurate.  While their findings did show that their machine learning algorithm was able to predict at a much higher success rate than random,  some data for currencies were limited. [@mittal2018research] Due to the trading volume of smaller coins,  it makes it harder to study market data when there is less of it.  This made me consider what coins I wanted to use in my research.  Using coins with enough trading data is important because it allows me to have enough data to make accurate predictions.

### Research Reviews

The research called, Past, present, and future of the application of machine learning in cryptocurrency research, conducted a review on multiple different machine learning algorithm research papers.  This offered a unique approach because it was coming from more a general point of view.  Many different machine-learning models were studied and the paper discussed the strengths and weaknesses found in different models.  This was very important when considering the model I wanted to use for my research.  An important thing to take away from this paper is to find that some research papers’ models were overfitted with their variables. [@ren2022research] This will lead to invalid predictors and wasted computational resources.  It also makes the model less portable.  The study found that there was a severe generalization of data in most machine-learning research studies.  I took this into careful consideration when developing what variables I wanted to include in my research. 

Another important study for my research was the Price Movement Prediction of Cryptocurrencies Using Sentiment Analysis and Machine Learning This study used basic techniques to calculate whether to invest in the market or not.  This research considered social implications by scraping Twitter as well.  The study used basic machine learning and social influence to measure a way to create an indication.  It took a look at BTC in the research.  This study found that it was not really more accurately able to predict than randomly investing. [@valencia2019research]  I considered this when I was working on my project.  I originally was going to develop a similar web scraping tool to gain a better understanding of when people were going to invest.  These, however, along with other studies provide enough evidence to come to the conclusion that monitoring social indicators does not translate well to predicting the market. I decided to cut this part from my research.

### Existing Tools

It is important to note that there are already existing tools of its kind.  Since the recent crypto boom, people have been looking for ways to try and predict the market.  What my tool does is further this understanding of the market.  By gaining more information about a topic, it will lead to better predictions in the future.  

#### CryptoPredictions.com

This is a website that uses machine learning algorithms to predict the prices of different cryptocurrencies.  It's not a specific tool, but a website that provides predictions of the cryptocurrency market based on historical data and ML models.  The website provides predictions for a variety of cryptocurrencies, including Bitcoin, Ethereum, Litecoin, and others.  The predictions are generated using a variety of machine learning models, such as neural networks and support vector machines, which are trained on historical price data.  What not necessarily to be taken as financial advise, it does offer a very good model of where the markets will go.

#### Crypto-ML

Crypto-ML is an open-source Python library for implementing machine learning models for cryptocurrency trading. It provides a set of tools and modules for building and testing trading strategies using machine learning techniques. The library allows users to easily access and manipulate historical cryptocurrency market data, as well as implement and backtest trading strategies using a variety of machine learning models, such as neural networks, decision trees, and linear regression.

It is designed to be user-friendly and easy to use, even for those with little to no experience in machine learning. It also provides pre-built models and strategies which can be used as a starting point for users looking to develop their own trading strategies. This can be a useful tool for researchers, data scientists and traders interested in experimenting with machine learning techniques in the context of cryptocurrency trading.

# Method of approach

This chapter answers the "how" question - how did you complete your project,
including the overall design of your study, details of the algorithms and tools you
have used, etc.  Use technical diagrams, equations, algorithms, and paragraphs of text
to describe the research that you have completed. Be sure to number all figures and
tables and to explicitly refer to them in your text.

This should contain:

* lists
* with points
* and more points
  * possibly subpoints

For those projects whose implications address social or moral issues (i.e. ethical
standards, causes, effects), you will want to use this section to describe how you
actively mitigated or considered these issues.

# Experiments

This chapter describes your experimental set up and evaluation. It should also
produce and describe the results of your study. The section titles below offer
a typical structure used for this chapter.

## Experimental Design

Especially as it pertains to responisble computing, if conducting experiments or
evaluations that involve particular ethical considerations, detail those issues here.

## Evaluation

## Threats to Validity

# Conclusion

Traditionally, this chapter addresses the areas proposed below as sections, although
not necessarily in this order or organized as offered. However, the last section --
"Ethical Implcations" is required for this chapter. See the heading below for more
details.

## Summary of Results

## Future Work

## Future Ethical Implications and Recommendations

Especially as pertains to the public release or use of your software or methods, what
unresolved or special issues remain? What recommendations might you make?

## Conclusions


# References

::: {#refs}
:::
