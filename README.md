
# Wine_Reviews_Project
![grape-and-wine](https://user-images.githubusercontent.com/106033535/198412216-7ff44c76-a60a-423e-9086-b76989293e3d.jpeg)


* Repository - Natalie
* Machine Learning - Mary Cate
* Database - Maria
* Technology - Niki

## Communication Protocol
We have been comminicating regularly on Slack and weekend group zooms to collaborate. 

## Reason for choosing data set:
We all love wine and people are constantly asking recomendations for wine and we want to create a website where one can put in some specifications and be provided with a few options.

## Questions:
1. What is the biggest impact to the quality point rating? ex... region, variety, or taste descriptions.
2. Could our machine learning apply while scraping a couple wine based websites?
3. What's the relationship between the price point and the quality point ratings?

## Machine Learning Module
* Takes in data in from the provisional database. Temporarily using csv but will convert to database.
* Outputs label(s) for input data.
* Assist consumers in predicting wines they will be interested in trying based on their preferences.

<img width="1083" alt="Screen Shot 2022-10-27 at 6 13 57 PM" src="https://user-images.githubusercontent.com/106033535/198408258-68e26abc-9017-4d52-a24c-8026c337aa0e.png">

Split Data into Training and Testing

<img width="251" alt="Screen Shot 2022-10-27 at 6 24 40 PM" src="https://user-images.githubusercontent.com/106033535/198409605-51983eae-8071-4180-afc5-a2ea5db36a5b.png">

Dropped unnesecary collumns to clean up dataset.

<img width="865" alt="Screen Shot 2022-10-30 at 2 39 47 PM" src="https://user-images.githubusercontent.com/106033535/198895868-3edfece1-2bf4-40c5-abac-844f3d441b38.png">


## Database Module
* Sample data that mimics the expected final database structure or schema
* Draft machine learning module is connected to the provisional database
* Data will be cleaned into a database that will display the inforamtion in an easy to read format. 
* Using webscraping to gather data from Vinio.com for additional wine data.


<img width="481" alt="Screen Shot 2022-10-28 at 7 03 26 PM" src="https://user-images.githubusercontent.com/106033535/198748628-fb7c796e-9abb-4d47-a3bb-b828e2f68ceb.png">

* **Description for Preliminary Data Preprocessing:** 

In order to use the wine description data in a machine learning model, the strings needed to be converted into an integer format. The decision was made to pull out popular keywords from the wines and then use the count of the popular keywords as the integer in the model. An assumption was made that the lengthier and more "buzzwordy" descriptions appeared to have higher ratings and were overall more positive. This was done by first removing any of the filler words and very common descriptors that do not add taste information. Those words included the "stop words" library and the additional words below.
![image](https://user-images.githubusercontent.com/105991478/200196010-5d6242eb-7e0f-407b-815b-07f7f9bdf933.png)

After removing those words using a for loop and the WordNetLemmantizer, a series was created by splitting out the individual words and counting the number of occurrences. The top 40 words were used. This value came from trial and error and a review of the dataset. More that the top 40 keywords did not seem to add additional descriptive value. 
![image](https://user-images.githubusercontent.com/105991478/200196191-0e650e58-3d76-4d24-89de-cef6941d4ed4.png)


## Dashboard
* Using JavaScript to display information in an eye pleasing and user friendly HTML page. 
* Using Tableau to create visualizations for the wine data. 
* Group presentation will use Google Slides to visualize the wine data in an easy to understand format, we will add the link to our html site so the the webpage can be easily referenced during the presentation. 
* Interactive elements will include being able to discover wines based on type, location, price, and ratings.
