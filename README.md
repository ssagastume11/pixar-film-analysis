# 🎬 Pixar Film Analysis

This project analyzes data from Pixar films released between 1995 and 2024 to uncover insights about how production elements like directors, composers, writers, and film ratings relate to outcomes such as box office earnings, IMDb and Rotten Tomatoes ratings, and Oscar wins.

---

## 📦 Dataset

**Source**: [Pixar Films 1995–2024 on Kaggle](https://www.kaggle.com/datasets/khaledxbenali/data-on-all-pixar-films-1995-2024)  
**Provider**: Khaled Benali  
**Filenames**: 
- `pixar_films.csv`
- `academy_awards.csv`
- `genres.csv`
- `pixar_people.csv`  
**Location**: Stored in the `data/` folder

**Fields include**:
- Film title, release date, run time, rating
- Box office revenue
- IMDb and Rotten Tomatoes scores
- Academy Award nominations and wins
- Names of directors, producers, screenwriters, composers

---

## 🔍 Business Task

The objective of this project is to analyze how **Pixar’s production decisions** and **creative teams** impact film performance by:

- Identifying production traits of Oscar-winning films
- Exploring how film ratings and creators relate to commercial and critical outcomes
- Understanding how Pixar’s strategy evolved over time

---

## 📊 Tools & Technology

- **Google BigQuery** for cloud-based SQL analysis
- **Google Sheets** for visualization and storytelling
- **Git & GitHub** for version control
- **PowerPoint / Google Slides** for presenting findings

---

## 📁 Project Structure

```plaintext
├── data/                
│   └── academy.csv
├── queries/            
│   └── Oscar-winning films by Runtime and Release Year.sql
├── charts/              
│   └── Bar chart comparing Oscar wins across years.png
├── presentation/        
│   └── Pixar Film Analysis Presentation.pptx
└── README.md
```

---

## 🧮 SQL Query (Oscar-Winning Films)

```sql
SELECT 
  f.film,
  f.release_date,
  a.award_type,
  a.status
FROM 
  `plenary-ability-463920-b3.pixar_films_data.pixar_films` f
JOIN 
  `plenary-ability-463920-b3.pixar_films_data.academy_awards_cleaned` a
ON 
  f.film = a.film
WHERE 
  a.status = 'Won'
ORDER BY 
  f.release_date;
```

---

## 📈 Analysis Output
Visuals created (saved in the visuals/ folder) include:
- 🎖️ Bar chart: Oscars across the years
- 💰 Scatter plot: IMDb ratings vs. box office earnings
- 📅 Timeline: evolution of Pixar films rating over time

These images helped identify strong correlations between creative direction, target audience, and performance.

---

## 🧾 Presentation
The final presentation includes:
- Purpose and business problem
- Data preparation and modeling in BigQuery
- Visualizations and trend insights
- Practical recommendations

View it in the slides/ folder.

---

## ✅ Next Steps
- Include a breakdown of sentiment based on genre or audience reception
- Track creative team changes over time using network analysis
- Create a public dashboard in Looker Studio

---

## 🙌 Acknowledgments
- Dataset courtesy of [Khaled Benali on Kaggle](https://www.kaggle.com/datasets/khaledxbenali/data-on-all-pixar-films-1995-2024)
- Tools powered by Google Cloud, BigQuery, SQL, and open source communities.
