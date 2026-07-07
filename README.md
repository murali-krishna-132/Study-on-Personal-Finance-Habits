# 📊 Personal Finance Habits Analysis

A comprehensive statistical analysis project that explores **personal finance habits**, including **spending patterns, saving behavior, investment decisions, and financial confidence** using survey data collected through Google Forms.

This project was developed as part of the **Elements of Statistics Lab (BCA Sem-III)** at **Somaiya School of Basic and Applied Sciences, Somaiya Vidyavihar University**.

---

## 📌 Project Overview

Financial literacy plays a crucial role in achieving long-term financial stability. This project aims to understand how individuals manage their finances by analyzing their:

- 💰 Spending Habits
- 💵 Saving Behavior
- 📈 Investment Practices
- 🛍️ Impulse Purchase Behavior
- 💹 Investment Decision Factors
- 📊 Financial Confidence

The analysis is performed using **R Programming** with statistical methods and data visualization techniques.

---

# 🎯 Objectives

- Analyze respondents' spending habits.
- Study saving patterns across different income groups.
- Examine investment behavior.
- Measure financial confidence using a Likert scale.
- Identify relationships between income, saving, and investment.
- Present meaningful insights using statistical analysis and visualizations.

---

# 📂 Dataset Information

| Attribute | Details |
|-----------|---------|
| Data Source | Google Forms |
| Responses | 50 |
| Region | Kalyan, Maharashtra |
| Sampling Method | Convenience Sampling |

The dataset includes:

- Timestamp
- Name
- Age
- Gender
- Occupation
- Monthly Income
- Expense Tracking Method
- Monthly Spending
- Impulse Purchase Frequency
- Saving Habit
- Motivation to Save
- Average Savings
- Investment Status
- Investment Type
- Investment Decision Influence
- Financial Confidence
- Suggestions

---

# 🛠️ Technologies Used

- R Programming
- readxl
- tidyverse
- ggplot2
- janitor
- skimr
- Microsoft Excel
- Google Forms

---

# 📊 Statistical Techniques

### Descriptive Statistics

- Mean
- Median
- Mode
- Range
- Variance
- Standard Deviation
- Quartiles
- Interquartile Range (IQR)

### Frequency Analysis

- Age Distribution
- Gender Distribution
- Occupation Distribution
- Monthly Income Distribution
- Expense Tracking Methods
- Monthly Spending
- Saving Habits
- Investment Habits
- Impulse Purchases

### Cross Tabulation

- Income vs Saving Habit
- Saving Habit vs Investment
- Occupation vs Saving
- Age vs Investment
- Gender vs Saving

---

# 📈 Visualizations

The project generates the following charts automatically:

- Age Distribution
- Gender Distribution
- Occupation Distribution
- Monthly Income Distribution
- Expense Tracking Bar Chart
- Expense Tracking Pie Chart
- Monthly Spending Distribution
- Impulse Purchase Analysis
- Saving Habits
- Investment Status
- Income vs Saving
- Saver–Investor Gap
- Financial Confidence Histogram
- Financial Confidence Boxplot
- Motivation to Save
- Investment Decision Influence

---

# 📁 Project Structure

```
Study on Personal Finance Habits
│
├── code
│   ├── module1.R
│   ├── module2.R
│   ├── module3.R
│   └── module4.R
│
├── data
│   └── dataset.xlsx
│
├── images
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
├── reports
│   ├── MiniProject.docx
│   └── Presentation.pptx
│
└── README.md
```

---

# 🚀 How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/personal-finance-habits-analysis.git
```

### 2. Open the Project

Open the project in **RStudio**.

---

### 3. Install Required Packages

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

### 4. Place the Dataset

Copy the Excel dataset into:

```
data/dataset.xlsx
```

---

### 5. Run the Analysis

Run the modules in the following order:

```r
source("code/module1.R")
source("code/module2.R")
source("code/module3.R")
source("code/module4.R")
```

---

# 📊 Key Findings

- Most respondents actively track their expenses.
- Mobile applications are the preferred expense tracking method.
- Saving habits improve with increasing income.
- Many respondents save regularly but have not yet started investing.
- Financial confidence is moderately positive.
- Income has a significant influence on saving behavior.

---

# 📦 Generated Outputs

The project automatically creates:

### Images

All charts are saved in:

```
images/
```

### Results

CSV summary tables are saved in:

```
results/
```

---

# 🔮 Future Improvements

- Increase survey sample size.
- Include respondents from multiple cities.
- Perform predictive analytics.
- Develop an interactive Shiny dashboard.
- Create a Power BI dashboard.
- Apply Machine Learning for behavioral prediction.

---

# 👨‍💻 Author

**Murali Krishna M**

BCA Sem-III

---

# 📄 License

This project is created for **educational and academic purposes**.

---

## ⭐ Support

If you found this project useful, please consider giving it a ⭐ on GitHub.