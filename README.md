# IMDb Movies Analysis and Dashboard

## Project Overview
This project involves web scraping, data preprocessing, database storage, and visualization of IMDb movie data from the last decade (2014-2024). The dataset includes details of 10,000 movies such as name, release year, genre, ratings, actors, directors, metascore, and more. The project culminates in an interactive Power BI dashboard for in-depth insights and reporting.

###

<div align="center">
  <img src="https://github.com/RafiQamar/IMDb-Movie-Analysis/blob/main/IMDb%20Dashboard%20Demo.gif?raw=true" height="300" alt="IMDB Dashboard gif" />
</div>

###

## Technologies Used
- **Web Scraping:** BeautifulSoup, Selenium, Requests, Time, Random
- **Data Processing:** Pandas, NumPy
- **Machine Learning:** Scikit-learn (RandomForestClassifier for genre prediction), TfidfVectorizer
- **Database Management:** MySQL, SQLAlchemy, MySQL Connector
- **Visualization:** Power BI

## Project Steps
### 1. Web Scraping
- Used Selenium for automated navigation (clicking, entering data, filtering, and loading more results).
- Extracted 10,000 movie links from IMDb using BeautifulSoup.
- Iterated through each movie link to collect metadata such as genres, ratings, directors, actors, and metascore.
- Implemented exception handling to manage missing values and errors.
- Created a structured dataset and saved it as a CSV file.

### 2. Data Preprocessing & Cleaning
- Handled missing values and inconsistencies (e.g., correcting misplaced values in duration and rated columns).
- Filled missing movie names based on actual movie titles.
- Used RandomForestClassifier to predict missing genres using movie descriptions.
- Finalized the cleaned dataset and stored it in a MySQL database.

### 3. Database Management (MySQL)
- Created an `imdb` database and imported the cleaned dataset.
- Executed various SQL queries for insights, such as:
  - Movies released in 2024
  - Top 5 highest-rated movies
  - Top 10 horror movies
  - Movies directed by Christopher Nolan
  - Highest-rated movie per genre
  - Ranking movies by Metascore and ratings
  - Most reviewed movies
  - Longest-duration movie per genre
  - Best-rated movie for each content rating

### 4. Power BI Dashboard
The Power BI dashboard consists of four interactive pages:

#### **Page 1: Individual Movie Insights**
- Slicer for selecting a movie name.
- Display of key metrics such as duration, ratings, number of ratings, release year, genre, description, user reviews, critic reviews, and metascore.
- TreeMap showing total ratings by genre.

#### **Page 2: Genre and Year-wise Trends**
- Slicers for selecting genre and release year.
- Bar chart showing total movies by genre.
- Gauge chart displaying average Metascore.
- Donut chart visualizing content rating breakdown.
- Line chart illustrating the trend of total movie releases per year.
- Key performance indicators (KPIs): total movies, average duration, average ratings, total number of ratings.

#### **Page 3: Ratings & Metascore Analysis**
- Slicers for genre and release year.
- Measures displaying best-rated movie and best Metascore movie, with images.
- Scatter plot showing the relationship between user ratings and Metascore.
- Table ranking movies by Metascore.

#### **Page 4: Actors, Directors & Duration Insights**
- Slicers for genre and release year.
- Measure displaying the longest movie by duration, with an image.
- Bar chart showing top actors by the number of movies they appeared in.
- Line chart comparing average user reviews vs. critic reviews by genre.
- Column charts:
  - Top 5 movies by ratings.
  - Top 10 directors by the number of movies directed.
  - Longest duration movies by genre.

### 5. Interactive Features
- Filters for genre and release year applied across all pages.
- Buttons to clear all slicer filters.
- Navigation buttons to move between different pages.

## How to Run the Project
### 1. Web Scraping & Data Processing
- Open and run `Scrapping_IMDb_movies.ipynb` in Jupyter Notebook to extract movie data.
- Run `Preprocessing-Modelling-Data Ingestion.ipynb` to clean, preprocess, and store data in MySQL.

### 2. Power BI Dashboard
- Open `IMDb Dashboard.pbix` in Power BI Desktop to explore interactive visualizations.

## Future Enhancements
- Expand the dataset beyond 10,000 movies for deeper analysis.
- Improve genre prediction using advanced NLP techniques.
- Automate data updates to keep the dashboard current.
- Deploy the dashboard online for wider accessibility.

## Author
This project was created by Rafi Qamar. For any inquiries or collaborations, feel free to reach out!

---


