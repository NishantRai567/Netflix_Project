# 📘 Netflix Data Analysis Report

## 🧠 Project Overview

This report presents an SQL-driven analysis of Netflix's catalog to uncover patterns in content type, ratings, genres, durations, country-wise contributions, and trends over time. The dataset was sourced from [Kaggle Netflix Shows Dataset](https://www.kaggle.com/shivamb/netflix-shows).

---

## 🔍 Questions & Findings

### 1.📺 Number of Movies and Tv Shows

- **Movies:** 5377 
- **TV Shows:** 2410 
> **Insight:** Movies make up the majority of Netflix’s catalog.

---

### 2. 🔢 Most Common Content Ratings

| Rating | Count |
|--------|-------|
| TV-MA  | 2,863 |
| TV-14  | 1,931 |
| R      | 806   |

> **Insight:** Netflix content skews toward mature audiences.

---
### 3. 🌍 Top 10 Countries for TV Shows and Total Content

| Country       | Total Content | 
|---------------|---------------|
| United States | 2,555        | 
| India         | 923          | 
| UK            | 397          |

| Country       | TV Shows      | 
|---------------|---------------|
| United States | 705           | 
| UK            | 204           | 
| Japan         | 157           | 

> **Insight:** The US dominates for both Movies and TV Shows, along with the UK. However, for Total Content India is in second place, whereas for TV Shows alone Japan is more popular

--- ### 4. 🕒 Average Movie Duration 

- **Average Duration:** ~99 minutes
  > **Insight:** Most Netflix movies fall in the 90–110 min range, while most TV Shows on Netflix are only 1 season long

---

### 5. 📊 Distribution of Seasons in TV Shows

| Seasons | Count |
|---------|-------|
| 1       | 1608 |
| 2       | 382  |
| 3+      | 420  |

> **Insight:** Limited series with one season are most common.

---

### 6. 📅 Releases Per Year


> **Insight:** Releases increased over time with a peak in **2019–2020**, with a dip around 2021. This peak is probably in line with covid where people were stuck at home and more likely to watch Netflix.

---

### 7. 🎬 Top Directors on Netflix

| Director        | Number of Titles |
|-----------------|------------------|
| Raul Campos,    | 18
  Jan Suter       |                  |
| Marcus Raboy    | 16               |
| Jay Karas       | 14               |

> **Insight:** Some directors appear frequently, especially in animated/kids content.

---
### 8. 🌐 International Outreach Over Time

- Plotted countries over years based on content count.
> **Insight:** Netflix expanded rapidly into non-U.S. markets starting ~2016.

---

### 9. 📈 Trending Genres Over the Years

- Most popular genres per year: Drama, Comedy, Documentary, etc.
> **Insight:** Dramas and Documentaries are consistently trending across years.

---

### 10. 🌎 Highest Content per Genre per Country


| Country |  Genre                 | Count |
|---------|----------------------  |       |
| UK      | Documentaries          | 41    |
| Taiwan  | International TV Shows | 31    |
| Egypt   | Comedies               | 29    |
> **Insight:** Countries have genre specialties—Taiwan excels in Internation TV Shows, UK in Documentaries.

---

### 11. 🧮 Longest Running Shows

| Title             | Duration Rank |
|-------------------|---------------|
| Grey’s Anatomy    | 1             |
| NCIS              | 12            |
> **Insight:** Some long-running shows are also syndicated globally.

---

### 12. 🧱 Total Content Over Time

Line chart showing total cumulative content added year-by-year.

> **Insight:** Consistent growth until 2020, slight plateau afterward.

---














