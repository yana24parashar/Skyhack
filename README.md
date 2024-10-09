# Skyhack

We used MYSQL Workbench to import the provided hack files and conducted analysis using Google Colaboratory and MYSQL files, which are accessible through the folder skyhack (MYSQL WORKBENCH) and ipynb file (Google colab).

Within the folder are the following items (MYSQL WORKBENCH):
1. Percentage_difference: Determine the % difference in handling times for the most and least frequent call reasons on average.
2. Analysis of Sentiment: The majority of negative sentiment
3. Analysis of Reasons: Most Common Reason
4.Handle_Time: Examining the longest handle duration
5. AHT: Mean time spent on a call
6. AST: Average response time to speed


Google Colaboratory: unitedairlines.ipynb

We uploaded the datasets to Google Colaboratory for feature engineering using the Numpy and Pandas libraries after cleaning them up in Excel.

Combined all four tables based on shared attributes, including call_id and customer_id. 
Primary call reasons were divided into five major groups, and agent and client tones were labeled in order to build a correlation matrix and examine the relationships between the different aspects.
