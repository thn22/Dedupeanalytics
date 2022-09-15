# Dedupeanalytics Inc.
![Dedupeanalytics Inc. logo](/images/dedupeanalytics.png)

## Team Members:
- Ethan Price
- Karan Shah

## Proposal
We found a world happiness dataset and would like to pair it with another dataset that is set at a worldwide perspective. Initially, we were going to pair world happiness with world disaster risk, however that dataset was in what we assumed to be German and were not sure how to get around that without major edits. This led us to picking human life expectancy for each country and the two datasets should pair up nicely.

## Data Sources:
- World Happiness Report by Sustainable Development Solutions Network [(https://www.kaggle.com/datasets/unsdsn/world-happiness)]
- Human Life Expectancy Around the World by Deep Contractor [(https://www.kaggle.com/datasets/deepcontractor/human-life-expectancy-around-the-world)]

## Process
### Extraction
After searching Kaggle for relevant data sources, we finally found two that would work well together and got started. The world happiness data set provided a ranking of all countries based on happiness score from 2015 to 2019. The happiness scores were assigned on a scale from 1 to 10, 10 being the best. As for the life expectancy data set, each country was listed along with the associated average life expectancy from 1990 up to 2019. Both data sets were formatted in CSV files.

### Transformation
After extracting both data sets, the real work began. The world happiness data set was divided into five individual CSV files, one for each year that the data ranged from. For our purposes, we wanted all five CSVs to be combined into one large one. First, we removed all the unnecessary columns we didn't need: Region, Rank, Standard Error, Economy, Family, Health, Freedom, & Trust. This left us with just the country and happiness score columns for each year. From there, we merged all five CSVs into one large one that contained each country and the happiness scores from 2015-2019. 
For the life expectancy data set, the task was slightly different. Within this data set there was a "Level" category that described if the data for that row was at a National or subnational level. This column added many extra rows to each country causing the same country to be listed multiple times within the table, so as to represent all the regions within each country. Before removing any columns, we had to remove all the rows that were listed at a subnational level, so we'd be left with just the national averages for each country. After dropping the subnational rows, we then removed all irrelevant columns: Country code, Level, Region, and years 1990-2014. 

### Load
![Project ERD](/images/ERD.PNG)
Now that we have our two cleaned data sets, containing only the data we desire, we began the process to upload the data to a database. We decided to use PostgreSQL for this project since we were more familiar with that program. In PostgreSQL we created a database to house the data, created two tables, Happiness and Life Expectancy, and sent all the data from Jupyter Notebook to the SQL database. From there, we were able to read the SQL queries back in our Jupyter Notebook and display the tables of information. We are left with a Happiness table containing every country in the world and their respective happiness scores from the years 2015-2019 and a Life Expectancy table that has every country and its respective average life expectancy. With these two tables, we are then able to run a query that merges everything together, so each country has its happiness scores and life expectancies from the years 2015-2019.

### Reason for this Topic ("Client's needs")
The year is 2020. COVID never happened. Instead, there is a global summit taking place to talk about the state of the world. Here at Dedupeanalytics, we have been hired by the summit committee to provide data on world happiness from a country level to determine which countries are successful at taking care of their citizens. For this assignment, we decided to pair happiness levels with each country's life expectancies to allow for further analysis on whether or not there is any correlation between the two.