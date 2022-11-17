# Wine_Reviews_Project
![grape-and-wine](https://user-images.githubusercontent.com/106033535/198412216-7ff44c76-a60a-423e-9086-b76989293e3d.jpeg)

## Team Members-Roles
* Repository and Presentation - [Natalie](https://github.com/nataliepoorcreations)
* Machine Learning - [Mary Cate](https://github.com/MCRobish)
* Database - [Maria](https://github.com/Mparra14)
* Technology - [Niki](https://github.com/NikiNoel)

## Presentation
Download presentation: [Google Slide Presentation](https://docs.google.com/presentation/d/14j0dBZNphSkz41oo3Oreq9Ry4PKfyBq4h4J1nzI_lcM/edit?usp=sharing)

Download Tableau: [Tableau](https://public.tableau.com/app/profile/nicole.phillips8398/viz/Wine_Reviews_16678657358970/WorldMap?publish=yes)


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

* **Description for Preliminary Data Preprocessing:** 

In order to use the wine description data in a machine learning model, the strings needed to be converted into an integer format. The decision was made to pull out popular keywords from the wines and then use the count of the popular keywords as the integer in the model. An assumption was made that the lengthier and more "buzzwordy" descriptions appeared to have higher ratings and were overall more positive. This was done by first removing any of the filler words and very common descriptors that do not add taste information. Those words included the "stop words" library and the additional words below.

![image](https://user-images.githubusercontent.com/105991478/200196010-5d6242eb-7e0f-407b-815b-07f7f9bdf933.png)

After removing those words using a for loop and the WordNetLemmantizer, a series was created by splitting out the individual words and counting the number of occurrences. The top 40 words were used. This value came from trial and error and a review of the dataset. More that the top 40 keywords did not seem to add additional descriptive value. 

![image](https://user-images.githubusercontent.com/105991478/200196191-0e650e58-3d76-4d24-89de-cef6941d4ed4.png)

* **Description of preliminary feature engineering and preliminary feature selection:**

In this model, the goal is to predict the quality rating based on the factors given in the dataset. Primarly the keyword count, the price, the country and the variety were included. The region and winery were excluded because there were too many unique values to develop patterns, and the conversion to integer values using _get dummies_ would have resulted in too large of a dataframe. The dataframe prior to using _get dummies_ to covert the country and variety columns is as follows: 

![image](https://user-images.githubusercontent.com/105991478/200196692-97b64a30-d00a-4c13-9845-16c9ebbc4456.png)


* **Split Data into Training and Testing:**

The y data set is the point information, which is what we are trying to predict. the X dataset are the keyword counts, price, country and wine variety converted into integer format. 

![image](https://user-images.githubusercontent.com/105991478/200196749-c30bcac9-bcb3-4349-92ac-b9e33bcb4a0a.png)

* **Explanation of model choice**

The first model selected is the Balanced Random Forest Classifier model. This model was selected because it serves the purpose for grouping better than a regression model. However, it appears that based on the imbalanced classification report, the precision is quite low. The model is also helpful to determine the important features. It appears that the price and keyword count have a larger impact than the variety of the wine. We will re-create this model without the variety variable as well as try a couple other grouping models to find a better fit. 

![image](https://user-images.githubusercontent.com/105991478/200197020-e75cf7d8-6dcb-4730-b1e1-7c445b6d561e.png)

* **Grouping based on wine quality**

<img width="484" alt="Screen Shot 2022-11-16 at 8 08 36 PM" src="https://user-images.githubusercontent.com/106033535/202329241-ca90a41f-13aa-459b-bd60-8e3e112610f8.png">

## Webscraping from vivino.com
<img width="807" alt="Screen Shot 2022-11-16 at 8 11 11 PM" src="https://user-images.githubusercontent.com/106033535/202329707-099c0b64-f4fe-40b6-9ca4-1689d007ae5f.png">
<img width="585" alt="Screen Shot 2022-11-16 at 8 11 38 PM" src="https://user-images.githubusercontent.com/106033535/202329726-08ac860d-0b31-47a9-92e3-61da01fbda8c.png">



## Database Module
* In order to organize our database, and ERD model was create to better visualize our final database. We had to establish which columns were necessary, and what other data could be ommitted for the purpose of our project in order to create our new filtered database. The outline of our database is seen in the picture below.

<img width="481" alt="Screen Shot 2022-10-28 at 7 03 26 PM" src="https://github.com/nataliepoorcreations/Wine_Reviews_Project/blob/main/QuickDBD-export%20(1).png">

* For the connection string SQLAlchemy was used to connect to postgres. The data was cleaned by removing unnecessary columns and making sure we had no null values in our data, this was done before it was loaded into postgress. The process can be seen below and this can also be fully seen in the file named wine_sqlalchemy.ipynb.
  * This connection created two databases that will be joined using SQL. 

    Cleaning Data Process
    ![cleaning_data_1](https://github.com/nataliepoorcreations/Wine_Reviews_Project/blob/Maria_Database/photos/clean_data_1.png)
    ![cleaning_data_2](https://github.com/nataliepoorcreations/Wine_Reviews_Project/blob/Maria_Database/photos/clean_data_2.png)

    Connection String
    ![connection](https://github.com/nataliepoorcreations/Wine_Reviews_Project/blob/Maria_Database/photos/connection_string.png)

    Wine Database 
    ![wine_db](https://github.com/nataliepoorcreations/Wine_Reviews_Project/blob/Maria_Database/photos/wine_db.png)

* For our joined database, a SQL query was used to create this new database which would link the wine name from the JSON file to our wine database. This can be seen in the query below along with the joined database. For a better visual please see joined_db.csv.zip file.

     SQL Query
     ![sql](https://github.com/nataliepoorcreations/Wine_Reviews_Project/blob/Maria_Database/photos/Join_sql.png)

     Joined Database Output
     ![joined_db](https://github.com/nataliepoorcreations/Wine_Reviews_Project/blob/Maria_Database/photos/JOINED_DB.png)

## Dashboard
* Using JavaScript to display information in an eye pleasing and user friendly HTML page. 
* Using Tableau to create visualizations for the wine data. 
* Group presentation will use Google Slides to visualize the wine data in an easy to understand format, we will add the link to our html site so the the webpage can be easily referenced during the presentation. 
* Interactive elements will include being able to discover wines based on type, location, price, and ratings.

<img width="1371" alt="Screen Shot 2022-11-08 at 7 35 03 PM" src="https://user-images.githubusercontent.com/106033535/201481108-d25ca082-aeaa-44e1-8490-5d688245badd.png">

