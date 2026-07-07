# 📊 Personal Finance Habits Analysis

A comprehensive statistical analysis project that explores **personal finance habits**, including **spending behavior, saving habits, investment decisions, impulse purchases, and financial confidence** using survey data collected through Google Forms.

---

# 📌 Project Overview

The project analyzes the financial habits of individuals by studying:

- 💰 Spending Patterns
- 💵 Saving Habits
- 📈 Investment Behavior
- 🛍️ Impulse Purchases
- 🎯 Saving Motivation
- 📊 Financial Confidence

Statistical techniques and data visualization are used to discover trends and relationships among different demographic groups.

---

# 🎯 Objectives

- Analyze spending habits.
- Study saving behavior.
- Understand investment decisions.
- Measure financial confidence.
- Examine the relationship between income and savings.
- Visualize financial behavior using statistical charts.

---

# 📂 Dataset Information

| Attribute | Details |
|-----------|---------|
| Source | Google Forms |
| Total Responses | 50 |
| Region | Kalyan, Maharashtra |
| Sampling Method | Convenience Sampling |

The dataset contains:

- Timestamp
- Name
- Age
- Gender
- Occupation
- Monthly Income
- Expense Tracking Method
- Monthly Spending
- Impulse Purchases
- Saving Habit
- Motivation to Save
- Average Savings
- Investment Status
- Investment Type
- Investment Influence
- Financial Confidence
- Suggestions

---

# 🛠 Technologies Used

- R Programming
- readxl
- tidyverse
- ggplot2
- janitor
- skimr
- Microsoft Excel
- Google Forms

---

# 📊 Statistical Analysis

## Frequency Analysis

- Age Distribution
- Gender Distribution
- Occupation Distribution
- Monthly Income Distribution
- Expense Tracking
- Monthly Spending
- Impulse Purchases
- Saving Habits
- Investment Habits

---

## Descriptive Statistics

- Mean
- Median
- Mode
- Range
- Variance
- Standard Deviation
- Quartiles
- Interquartile Range (IQR)

---

## Cross Tabulation

- Income vs Saving Habit
- Saving Habit vs Investment
- Occupation vs Saving
- Age vs Investment
- Gender vs Saving

---

# 📈 Visualizations

The project automatically generates:

- Age Distribution
- Gender Distribution
- Occupation Distribution
- Monthly Income Distribution
- Expense Tracking Bar Chart
- Expense Tracking Pie Chart
- Monthly Spending Distribution
- Impulse Purchase Distribution
- Saving Habits
- Investment Status
- Income vs Saving
- Saver–Investor Gap
- Financial Confidence Histogram
- Financial Confidence Boxplot
- Motivation to Save
- Investment Decision Influence

All charts are saved in the **images/** folder.

---

# 📁 Project Structure

```
Study on Personal Finance Habits/
│
├── code/
│   ├── module1.R
│   ├── module2.R
│   ├── module3.R
│   └── module4.R
│
├── data/
│   └── dataset.xlsx
│
├── images/
│   ├── age_distribution.png
│   ├── gender_distribution.png
│   ├── occupation_distribution.png
│   ├── income_distribution.png
│   ├── expense_tracking_bar.png
│   ├── expense_tracking_pie.png
│   ├── monthly_spending_distribution.png
│   ├── impulse_purchase_distribution.png
│   ├── saving_habits_bar.png
│   ├── investment_distribution.png
│   ├── income_vs_saving.png
│   ├── saver_investor_gap.png
│   ├── financial_confidence_histogram.png
│   ├── financial_confidence_boxplot.png
│   ├── motivation_to_save.png
│   └── investment_influence.png
│
├── results/
│   ├── age_table.csv
│   ├── gender_table.csv
│   ├── occupation_table.csv
│   ├── income_table.csv
│   ├── expense_tracking_table.csv
│   ├── monthly_spending_table.csv
│   ├── impulse_purchase_table.csv
│   ├── saving_table.csv
│   ├── investment_table.csv
│   ├── descriptive_statistics.csv
│   ├── mode_results.csv
│   ├── income_vs_saving.csv
│   ├── saving_vs_investment.csv
│   ├── occupation_vs_saving.csv
│   ├── age_vs_investment.csv
│   ├── gender_vs_saving.csv
│   ├── motivation_summary.csv
│   ├── investment_influence.csv
│   ├── project_summary.csv
│   ├── key_findings.csv
│   ├── recommendations.csv
│   └── session_info.txt
│
├── reports/
│   ├── MiniProject.docx
│   ├── Presentation.pptx
│   └── MiniProject.pdf
│
├── README.md
└── .gitignore
```

---

# 🚀 How to Run

### Clone the Repository

```bash
git clone https://github.com/murali-krishna-132/Study-on-Personal-Finance-Habits.git
```

---

### Install Packages

```r
install.packages(c(
  "readxl",
  "tidyverse",
  "ggplot2",
  "janitor",
  "skimr"
))
```

---

### Project Setup

Place the dataset inside the **data/** folder.

```
data/
└── dataset.xlsx
```

---

### Run the Project

```r
source("code/analysis.R")
```

---

# 📦 Generated Outputs

### 📊 Images

All visualizations are automatically saved in:

```
images/
```

### 📑 Results

All statistical summaries and analysis tables are automatically exported to:

```
results/
```

These include:

- Frequency Tables
- Descriptive Statistics
- Cross-Tabulations
- Key Findings
- Project Summary
- Recommendations
- Session Information

---

# 🔍 Key Findings

- Most respondents actively track their expenses.
- Mobile applications are the preferred expense-tracking method.
- Saving habits improve with increasing income.
- Many respondents save regularly but have not yet started investing.
- Financial confidence is moderately positive.
- Income has a significant influence on saving behavior.

---

# 🔮 Future Improvements

- Expand the survey to a larger population.
- Include respondents from multiple cities.
- Build an interactive dashboard using Shiny.
- Create a Power BI dashboard.
- Apply Machine Learning techniques for financial behavior prediction.

---

# 👨‍💻 Author

**Murali Krishna M**

---

# 📄 License

This project is intended for **educational and academic purposes**.

---

## ⭐ Support

If you found this project useful, consider giving it a **Star ⭐** on GitHub.
