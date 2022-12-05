# Template description

This repository contains the starter materials for your thesis in Computer
Science 600 and 610 in Fall 2022  and Spring 2023 academic term. The main
directory of this repository contains the Markdown template for a project that
is designed for use with GitHub Classroom. To learn more about the course
in which these assignments were completed, please refer to the `README.md` file.

The template specifies various settings in the `config.yaml` file included in the
repository. Change the appropriate values under the `Project-specific values`
heading. Changing other values outside of that section may cause the project to
fail to build. **Modify these values at your own risk.**

Author your thesis in the `thesis.md` document using appropriate Markdown
hierarchy and syntax; GitHub Actions will automatically create a PDF from the
`abstract.md` and `proposal.md` files. Consult the `README` of the proposal
repository to learn how to properly build and release this PDFs.

## Citations and references

Including references throughout requires a specific pseudo-Markdown tag, demonstrated
in the following blockquote. (Inspect the `thesis.md` file to see the format.)

> A citation, when included correctly, will appear as it does at the end of this
> sentence. [@plaat1996research]

## Labeling figures

To label a figure (i.e. an image), referencing the image using correct Markdown
will automatically caption the figure:

```markdown
![Label](images/IMAGE_NAME.png)
```

## Labeling tables

To provide a label for a table, write a short caption for the table and prefix the caption
with `Table:` as in the example below:

```
Table: A two-row table demonstrating tables

|Row number | Description |
|:----------|:------------|
|1          |Row 1        |
|2          |Row 2        |
```

## Other template information

Two things specific to this template to also keep in mind:

1. It is your responsibility to remove this description section before building
the PDF version you plan to defend.
2. References _will only appear if cited correctly_ in the text

## Note on `LaTeX` commands

Documents may include specific `LaTeX` commands _in Markdown_. To render these, surround the commands
with markup denoting `LaTeX`. For example:

```
Checkmark character:   $\checkmark$
Superscript character: $^{\dag}$
```

If using a special package not included in the template, add the desired `LaTeX`
package or command/macro to the `header-includes` property in [config.yaml](config.yaml).

Should this package not be included in the environment shipped with this template,
you may also need to add the package to the [GitHub Actions Workflow](.github/workflows/main.yml).

Direct any questions about issues to your first reader.

# Introduction


The completed work of my project is currently I have a working Python program that uses Principle Component Analysis (PCA) in order to evaluate potential times to create buy and sell orders.  The program uses the Binance API to collect real-time data stored in a file.  The file is then organized into columns that then can be called for future use.  There are eleven different data points that I am looking at in my research.  Later in the paper, I will discuss and justify why I chose these eleven.  The data is then pulled from the file.  It is applied to the PCA model where the eleven values are reduced into values that can be placed on a graph.  Graphs are then created to display the information collected on the cryptocurrency.  Using Plotly graphs, the program is able to create graphs to display the mean and distribution of positive and negative values.  From this, a user is able to determine the best times when to invest and when not to.  This is important because any edge trading in the market will lead to a competitive advantage causing potential monetary gain.  It is a possible solution to accurately analyze the market.
The ethical considerations for this project include how this would affect the market.  Having something that was proven successful like this could lead to an unfair advantage.  This would, in turn, if done on a large enough scale, could disrupt the market that the program had studied.  This would make the program not invest based on the new market but invest in the one it had studied.  This might cause problems with the program.  Another ethical consideration is how users would overuse a system like this and potentially crash the entire network.  If something like this became too popular and the Binance infrastructure is unable to support the traffic, it could lead to issues.  Looking at these issues closely in the paper will reveal how I addressed issues in my research.


## Motivation

## Current State of the Art

## Goals of the Project

## Ethical Implications

This document requires that you discuss the ethical implications of your work -- no
matter how benign you consider the outcome of your project. As several major studies
of ethical issues in computer science assert: _no project is completely value-neutral_.

To assist you in elaborating on these issues, the following areas are topics you might
consider addressing. You do not need to address all of them.

* Information Privacy
* Information Accuracy (e.g. can contain reliability)
* Potential Misuse (e.g. computer crime, unintended consequences)
* Second- or Third-Party Risk (e.g. safety)
* Data Collection Issues (e.g. issues inherent in collecting data)
* Algorithmic or Data Bias
* Potential Power Difference / Social Imbalance / Issues in Equity

In addition, reflect on ways that the above harms can be or are mitigated by your work

# Related work

Akyildirim, E., Goncu, A. & Sensoy, A. Prediction of cryptocurrency returns using machine learning. Ann Oper Res 297, 3–36 (2021). https://doi.org/10.1007/s10479-020-03575-y

One of the related works that I have taken a look at was the research done by the Annals of Operations Research team.  The study used machine learning to take a look at twelve different coins.  Using four different classification algorithms, it predicted future market activity.  They found from this that they were accurately able to predict future market activity 70% of the time in the short term.  This proves that a profitable algorithm is achievable.  I review this study for my own research and applied my own similar techniques to analyze.  For instance, when considering the data that I needed to collect, consulting this study was valuable in my research.

Valencia F, Gómez-Espinosa A, Valdés-Aguirre B. Price Movement Prediction of Cryptocurrencies Using Sentiment Analysis and Machine Learning. Entropy. 2019; 21(6):589. https://doi.org/10.3390/e21060589
	
	This study used basic techniques to calculate whether to invest in the market or not.  This research considered social implications by scraping Twitter as well.  The study used basic machine learning and social influence to measure a way to create an indication.  It took a look at BTC in the research.  This study found that it was not really more accurately able to predict than randomly investing.  I considered this when I was working on my project.  I originally was going to develop a similar web scraping tool to gain a better understanding of when people were going to invest.  These, however, along with other studies provide enough evidence to come to the conclusion that monitoring social indicators does not translate well to predicting the market. I decided to cut this part from my research.

Sun, Jifeng, Yi Zhou, and Jianwu Lin. "Using machine learning for cryptocurrency trading." 2019 IEEE International Conference on Industrial Cyber Physical Systems (ICPS). IEEE, 2019.

	In this study, the scope of the research looked at different Twitter and market activity for Bitcoin, Ethereum, Ripple, and Litecoin.  This study used a neural network to determine market indicators.  They found that it was able to accurately predict market activity using this data.  What I found interesting in this study is that each of the different coins had different success rates.  This demonstrates that different coins have different social environments that could be hard to predict.  Another thing to note is that the market activity and social indicators are combined.  This leaves some questions about what really affects the market.  I considered this in my research when determining the scope of my project.  I decided that I wanted to narrow down my research to market activity.  

Forecasting cryptocurrency prices time series using machine learning approach Vasily Derbentsev, Natalia Datsenko, Olga Stepanenko and Vitaly Bezkorovainyi
SHS Web Conf., 65 (2019) 02001 DOI: https://doi.org/10.1051/shsconf/20196502001

	My project was influenced by this study due to the fact is was doing a different machine learning model.  The study took a look at collecting the data and using a Binary Auto Regressive Tree (BART) instead of a PCA model like in this one. It took a look at Bitcoin, Ethereum, and Ripple.  The study found that the longer the data set the model was predicting, the more accurate it became.  This made me consider the time frame that I wanted to focus on for my project.  I decided that I wanted to focus on more short-term predictions.  While something like this has been proven to be effective in the run, my research is more focused on short-term profit.  I wanted to see if it would be profitable to trade with a trading algorithm in the short run.  

Awotunde, Joseph Bamidele, et al. "Machine learning algorithm for cryptocurrencies price prediction." Artificial Intelligence for Cyber Security: Methods, Issues and Possible Horizons or Opportunities. Springer, Cham, 2021. 421-447.

	This article demonstrated that it was possible to predict future market activity using machine learning.  It used Long Short-Term Memory (LSTM) to build the cryptocurrency price prediction model.  In the closing notes for the study, it takes about future work that could be done to improve their research.  This was considered in my research.  For example, it helped determine what machine learning model was used in this research.  I rescoped my project to improve the effectiveness of understanding market activity.  Introducing structure to the way the data is collected removes uncertainty in the volatility of the market.

Alessandretti, Laura, et al. "Machine learning the cryptocurrency market." Complexity 2018 (2018).

	This project helped me figure out the scope of my project.  It studied 1,681 currencies using two different models.  The first one was long short-term memory models which it was found to be effective at predicting.  The other was a Batesian neural network.  While this study found that machine learning was able to predict market activity, it looked at way too many subjects for my research here.  Just to keep the scope of the project doable it was decided that this research would focus on just two currencies.  It also made me take into account transaction fees when trading.  This is important because it is something that must be overcome if profitable trading is going to be achieved.  I decided that this is something that I would like to examine in my own research.

Chowdhury, Reaz, et al. "An approach to predict and forecast the price of constituents and index of cryptocurrency using machine learning." Physica A: Statistical Mechanics and its Applications 551 (2020): 124569.

	The article takes a look at Bitcoin, Digital Cash, and Ripple and uses four different neural networks to forecast the price.  Most of the models were not that successful at predicting market activity.  However, one model was 92.4% accurate at creating profitable trades.  This paper made me consider what to look at when gathering my data to use for predictions.  For instance, it made me look at different variables that I would include in my research.  Different models had varying successes but all used the same variables.  This means that this can be translated into a different model to the usefulness of it.  This research made me consider what to include and take a look at for this project.

Ren, Yi-Shuai, et al. "Past, present, and future of the application of machine learning in cryptocurrency research." Research in International Business and Finance (2022): 101799.

	The research conducted a review on multiple different machine learning algorithm research papers.  This offered a unique approach because it was coming from more a general point of view.  Many different machine-learning models were studied and the paper discussed the strengths and weaknesses found in different models.  This was very important when considering the model I wanted to use for my research.  An important thing to take away from this paper is to find that some research papers’ models were overfitted with their variables.  This will lead to invalid predictors and wasted computational resources.  It also makes the model less portable.  The study found that there was a severe generalization of data in most machine-learning research studies.  I took this into careful consideration when developing what variables I wanted to include in my research.  

Fang, Fan, et al. "Ascertaining price formation in cryptocurrency markets with machine learning." The European Journal of Finance (2021): 1-23.

	The research paper looked at short-term trading with machine learning algorithms.  It used a Long-Short-Term-Memory model to take in data and create price predictions.  The findings from using this model were that it was 78% effective at predicting the market.  One thing that was noted was that due to the scope of the research the neural network did not have much data to train on.  This possible could lead to incorrect financial predictions.  To deal with this in my research, I will look at multiple days at multiple times to gather as much information as possible.  I think this will lead to a more thorough understanding of how market activity is affected.

Patel, Mohil Maheshkumar, et al. "A deep learning-based cryptocurrency price prediction scheme for financial institutions." Journal of information security and applications 55 (2020): 102583.

	For this research, it focused on only two currencies, Litecoin and Monero.  However, it was noted in the paper that this research could be adapted to other cryptocurrencies.  It looked at the viability of using two different machine learning models Recurrent Neural Network and Long Short-Term Memory.  Both were applied to both of the coins.  The study found that the proposed schemes are able to accurately predict prices.  This was promising research as it proved that it was possible to have a model that predicts and trades profitably.  I learned from this article and applied it to my research.  For instance, it made me consider the time frame that I should have for my research.  This led to me wanting to work on more of a short-term project that looked at price predictions.  

Kim, Han-Min, Gee-Woo Bock, and Gunwoong Lee. "Predicting Ethereum prices with machine learning based on Blockchain information." Expert Systems with Applications 184 (2021): 115480.

	This study differentiates itself by taking just a look at Ethereum.  It used machine learning models to reveal that it is possible to predict Ethereum prices using economic factors.  The study noted that Ethereum and Bitcoin have different movement patterns.  This would create a difference in the techniques needed to predict currency prices.  The study also found that maco-economic facts significantly improve the prediction accuracy of Ethereum prices.  Two different machine-learning techniques were applied to the data.  From the findings, the researchers found that trading with consideration of Blockchain information was profitable.  This is something that I considered for my own research.  I was able to learn from this to be able to choose the variables I needed for my research.

Mittal, Ruchi, Shefali Arora, and M. P. S. Bhatia. "Automated cryptocurrencies prices prediction using machine learning." Division of Computer Engineering, Netaji Subhas Institute of Technology, India 8 (2018): 2229-6956.

	Automated cryptocurrencies prices prediction using machine learning looks at a few different currencies using a  Long Short-Term Memory model.  This study looked at the short-term viability of predictions.  After studying seven cryptocurrencies, the researchers determined that if they used more information, the study would be more accurate.  While their findings did show that their machine learning algorithm was able to predict at a much higher success rate than random,  some data for currencies were limited.  Due to the trading volume of smaller coins,  it makes it harder to study market data when there is less of it.  This made me consider what coins I wanted to use in my research.  Using coins with enough trading data is important because it allows me to have enough data to make accurate predictions.

Hitam, Nor Azizah, and Amelia Ritahani Ismail. "Comparative performance of machine learning algorithms for cryptocurrency forecasting." Ind. J. Electr. Eng. Comput. Sci 11.3 (2018): 1121-1128.

	The paper had a strong focus on studying the performance of machine learning algorithms.  The researchers looked at six different cryptocurrencies to study the market data. It compared Support Vector Machines (SVM) and Artificial Neural Networks (ANNs).  SVM was proven to be the most accurate in being able to predict market movements at 95.5% accuracy.  This study proved that by using machine learning, it is possible to predict future price movements.  Adapting what they learned in my research, I have considered the options of my machine learning algorithm.  After careful consideration, I decided to focus my research on PCA models.


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
