###############################################################
# PERSONAL FINANCE HABITS ANALYSIS
# Module 1 : Data Import, Cleaning & Exploratory Data Analysis
# Author : Murali Krishna M
###############################################################

###############################
# 1. Install Required Packages
###############################

# Run only once
install.packages("readxl")
install.packages("tidyverse")
install.packages("janitor")
install.packages("skimr")

###############################
# 2. Load Libraries
###############################

library(readxl)
library(tidyverse)
library(janitor)
library(skimr)

###############################
# 3. Create Output Folders
###############################

dir.create("images", showWarnings = FALSE)
dir.create("results", showWarnings = FALSE)

###############################
# 4. Load Dataset
###############################

finance <- read_excel("C:\\Users\\mural\\Desktop\\Murali\\Study on Personal Finance Habits\\data\\dataset.xlsx")

###############################
# 5. View Dataset
###############################

head(finance)
tail(finance)

View(finance)

###############################
# 6. Dataset Information
###############################

cat("\n==============================")
cat("\nDATASET INFORMATION")
cat("\n==============================\n")

dim(finance)

nrow(finance)

ncol(finance)

names(finance)

str(finance)

glimpse(finance)

###############################
# 7. Rename Columns
###############################

finance <- finance %>%
rename(

Timestamp=`Timestamp`,

Name=`Name`,

Age=`Age`,

Gender=`Gender`,

Occupation=`Occupation`,

MonthlyIncome=`Monthly Income (Approximate)`,

ExpenseTracking=`How do you usually track your expenses?`,

MonthlySpending=`What percentage of your income do you spend monthly (on average)?`,

ImpulsePurchase=`How often do you make impulse purchases?`,

SavingHabit=`Do you have a regular habit of saving money?`,

Motivation=`What motivates you to save? (Select all that apply)`,

AverageSavings=`How much of your monthly income do you save on average?`,

Investment=`Do you invest your money?`,

InvestmentType=`If yes, where do you usually invest? (Select all that apply)`,

InvestmentInfluence=`What influences your investment decisions the most?`,

FinancialConfidence=`Please indicate your level of agreement with the following statements:`,

Suggestions=`Any suggestions or comments about your financial habits or this survey?`
)

###############################
# 8. Clean Dataset
###############################

finance <- clean_names(finance)

names(finance)

###############################
# 9. Convert Data Types
###############################

finance$financial_confidence <-
as.numeric(finance$financial_confidence)

finance$age <-
factor(finance$age)

finance$gender <-
factor(finance$gender)

finance$occupation <-
factor(finance$occupation)

finance$monthly_income <-
factor(finance$monthly_income)

finance$expense_tracking <-
factor(finance$expense_tracking)

finance$monthly_spending <-
factor(finance$monthly_spending)

finance$impulse_purchase <-
factor(finance$impulse_purchase)

finance$saving_habit <-
factor(finance$saving_habit)

finance$average_savings <-
factor(finance$average_savings)

finance$investment <-
factor(finance$investment)

###############################
# 10. Missing Values
###############################

cat("\n==============================")
cat("\nMISSING VALUES")
cat("\n==============================\n")

colSums(is.na(finance))

sum(is.na(finance))

###############################
# 11. Duplicate Records
###############################

duplicates <- duplicated(finance)

sum(duplicates)

finance <- finance[!duplicates, ]

###############################
# 12. Summary Statistics
###############################

summary(finance)

skim(finance)

###############################
# 13. Frequency Tables
###############################

################ Age ################

age_table <- finance %>%
count(age) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(age_table)

################ Gender ################

gender_table <- finance %>%
count(gender) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(gender_table)

################ Occupation ################

occupation_table <- finance %>%
count(occupation) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(occupation_table)

################ Income ################

income_table <- finance %>%
count(monthly_income) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(income_table)

################ Expense Tracking ################

expense_table <- finance %>%
count(expense_tracking) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(expense_table)

################ Monthly Spending ################

spending_table <- finance %>%
count(monthly_spending) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(spending_table)

################ Impulse Purchase ################

impulse_table <- finance %>%
count(impulse_purchase) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(impulse_table)

################ Saving Habit ################

saving_table <- finance %>%
count(saving_habit) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(saving_table)

################ Investment ################

investment_table <- finance %>%
count(investment) %>%
mutate(
Percentage=
round(n/sum(n)*100,2)
)

print(investment_table)

###############################
# 14. Save Frequency Tables
###############################

write.csv(age_table,
"results/age_table.csv",
row.names=FALSE)

write.csv(gender_table,
"results/gender_table.csv",
row.names=FALSE)

write.csv(occupation_table,
"results/occupation_table.csv",
row.names=FALSE)

write.csv(income_table,
"results/income_table.csv",
row.names=FALSE)

write.csv(expense_table,
"results/expense_tracking_table.csv",
row.names=FALSE)

write.csv(spending_table,
"results/monthly_spending_table.csv",
row.names=FALSE)

write.csv(impulse_table,
"results/impulse_purchase_table.csv",
row.names=FALSE)

write.csv(saving_table,
"results/saving_table.csv",
row.names=FALSE)

write.csv(investment_table,
"results/investment_table.csv",
row.names=FALSE)

###############################
# 15. Basic Console Summary
###############################

cat("\n==============================")
cat("\nBASIC DATASET SUMMARY")
cat("\n==============================\n")

cat("Total Respondents :", nrow(finance), "\n")

cat("Total Variables   :", ncol(finance), "\n")

cat("Missing Values    :", sum(is.na(finance)), "\n")

cat("Duplicate Rows    :", sum(duplicates), "\n")

cat("\nModule 1 Completed Successfully.\n")

###############################################################
# PERSONAL FINANCE HABITS ANALYSIS
# Module 2 : Statistical Analysis
# Requires Module 1 (finance dataframe)
###############################################################

library(tidyverse)

# -----------------------------
# Descriptive Statistics
# -----------------------------
cat("\n===== DESCRIPTIVE STATISTICS =====\n")

desc_stats <- data.frame(
  Mean = mean(finance$financial_confidence, na.rm = TRUE),
  Median = median(finance$financial_confidence, na.rm = TRUE),
  SD = sd(finance$financial_confidence, na.rm = TRUE),
  Variance = var(finance$financial_confidence, na.rm = TRUE),
  Minimum = min(finance$financial_confidence, na.rm = TRUE),
  Maximum = max(finance$financial_confidence, na.rm = TRUE),
  Range = diff(range(finance$financial_confidence, na.rm = TRUE)),
  Q1 = quantile(finance$financial_confidence,0.25,na.rm=TRUE),
  Q3 = quantile(finance$financial_confidence,0.75,na.rm=TRUE),
  IQR = IQR(finance$financial_confidence,na.rm=TRUE)
)

print(desc_stats)
write.csv(desc_stats,"results/descriptive_statistics.csv",row.names=FALSE)

# -----------------------------
# Mode helper
# -----------------------------
Mode <- function(x){
 ux <- unique(na.omit(x))
 ux[which.max(tabulate(match(x, ux)))]
}

mode_results <- data.frame(
  ExpenseTracking = as.character(Mode(finance$expense_tracking)),
  Occupation = as.character(Mode(finance$occupation)),
  MonthlyIncome = as.character(Mode(finance$monthly_income)),
  SavingHabit = as.character(Mode(finance$saving_habit)),
  Investment = as.character(Mode(finance$investment))
)
print(mode_results)
write.csv(mode_results,"results/mode_results.csv",row.names=FALSE)

# -----------------------------
# Income vs Saving
# -----------------------------
income_vs_saving <- finance %>%
  filter(!is.na(monthly_income), !is.na(saving_habit)) %>%
  count(monthly_income, saving_habit) %>%
  group_by(monthly_income) %>%
  mutate(Percentage = round(100*n/sum(n),2)) %>%
  ungroup()

print(income_vs_saving)
write.csv(income_vs_saving,"results/income_vs_saving.csv",row.names=FALSE)

# -----------------------------
# Saving vs Investment
# -----------------------------
saving_vs_investment <- finance %>%
  filter(!is.na(saving_habit), !is.na(investment)) %>%
  count(saving_habit, investment) %>%
  group_by(saving_habit) %>%
  mutate(Percentage = round(100*n/sum(n),2)) %>%
  ungroup()

print(saving_vs_investment)
write.csv(saving_vs_investment,"results/saving_vs_investment.csv",row.names=FALSE)

# -----------------------------
# Occupation vs Saving
# -----------------------------
occupation_vs_saving <- finance %>%
  count(occupation, saving_habit)

write.csv(occupation_vs_saving,
          "results/occupation_vs_saving.csv",
          row.names=FALSE)

# -----------------------------
# Age vs Investment
# -----------------------------
age_vs_investment <- finance %>%
  count(age, investment)

write.csv(age_vs_investment,
          "results/age_vs_investment.csv",
          row.names=FALSE)

# -----------------------------
# Gender vs Saving
# -----------------------------
gender_vs_saving <- finance %>%
  count(gender, saving_habit)

write.csv(gender_vs_saving,
          "results/gender_vs_saving.csv",
          row.names=FALSE)

# -----------------------------
# Motivation Analysis
# -----------------------------
motivation <- finance %>%
  separate_rows(motivation, sep=",") %>%
  mutate(motivation=trimws(motivation)) %>%
  filter(motivation!="") %>%
  count(motivation, sort=TRUE)

write.csv(motivation,
          "results/motivation_summary.csv",
          row.names=FALSE)

# -----------------------------
# Investment Influence
# -----------------------------
investment_influence <- finance %>%
  count(investment_influence, sort=TRUE)

write.csv(investment_influence,
          "results/investment_influence.csv",
          row.names=FALSE)

# -----------------------------
# PPT Metrics
# -----------------------------
cat("\n===== REPORT METRICS =====\n")

save_pct <- finance %>%
  count(saving_habit) %>%
  mutate(Pct=100*n/sum(n))

invest_pct <- finance %>%
  count(investment) %>%
  mutate(Pct=100*n/sum(n))

print(save_pct)
print(invest_pct)

high_income <- income_vs_saving %>%
 filter(monthly_income %in% c("₹50,001–₹1,00,000","Above ₹1,00,000"),
        saving_habit=="Yes")

low_income <- income_vs_saving %>%
 filter(monthly_income %in% c("Less than ₹10,000","₹10,000–₹25,000"),
        saving_habit=="Yes")

cat("\nHigh-income saving percentages:\n")
print(high_income)

cat("\nLow-income saving percentages:\n")
print(low_income)

cat("\nModule 2 Completed Successfully.\n")


###############################################################
# PERSONAL FINANCE HABITS ANALYSIS
# Module 3 : Visualizations
# Requires Module 1 (finance dataframe)
###############################################################

library(tidyverse)

dir.create("images", showWarnings = FALSE)

save_plot <- function(p,name,w=8,h=5){
  ggsave(file.path("images",name),plot=p,width=w,height=h,dpi=300)
}

# Age Distribution
p_age <- ggplot(finance,aes(age,fill=age))+
  geom_bar(show.legend=FALSE)+
  theme_minimal()+
  labs(title="Age Distribution",x="Age Group",y="Respondents")
save_plot(p_age,"age_distribution.png")

# Gender Distribution
p_gender <- ggplot(finance,aes(gender,fill=gender))+
  geom_bar(show.legend=FALSE)+
  theme_minimal()+
  labs(title="Gender Distribution")
save_plot(p_gender,"gender_distribution.png")

# Occupation
p_occ <- ggplot(finance,aes(reorder(occupation,occupation,length),fill=occupation))+
  geom_bar(show.legend=FALSE)+
  coord_flip()+theme_minimal()+
  labs(title="Occupation Distribution",x="",y="Count")
save_plot(p_occ,"occupation_distribution.png")

# Monthly Income
p_income <- ggplot(finance,aes(monthly_income,fill=monthly_income))+
  geom_bar(show.legend=FALSE)+
  theme_minimal()+
  theme(axis.text.x=element_text(angle=45,hjust=1))+
  labs(title="Monthly Income Distribution",x="",y="Count")
save_plot(p_income,"income_distribution.png")

# Expense Tracking
expense_summary <- finance %>% count(expense_tracking) %>% mutate(pct=100*n/sum(n))
p_exp_bar <- ggplot(expense_summary,aes(reorder(expense_tracking,n),n))+
  geom_col(fill="steelblue")+
  coord_flip()+theme_minimal()+
  geom_text(aes(label=paste0(round(pct,1),"%")),hjust=-0.2)+
  labs(title="Expense Tracking Methods",x="",y="Count")
save_plot(p_exp_bar,"expense_tracking_bar.png")

p_exp_pie <- ggplot(expense_summary,aes(x="",y=pct,fill=expense_tracking))+
  geom_col(width=1,color="white")+
  coord_polar("y")+
  theme_void()+
  geom_text(aes(label=paste0(round(pct,1),"%")),
            position=position_stack(vjust=.5),size=3)
save_plot(p_exp_pie,"expense_tracking_pie.png",6,6)

# Monthly Spending
p_spend <- ggplot(finance,aes(monthly_spending,fill=monthly_spending))+
  geom_bar(show.legend=FALSE)+
  theme_minimal()+
  theme(axis.text.x=element_text(angle=30,hjust=1))+
  labs(title="Monthly Spending Distribution")
save_plot(p_spend,"monthly_spending_distribution.png")

# Impulse Purchases
p_impulse <- ggplot(finance,aes(impulse_purchase,fill=impulse_purchase))+
  geom_bar(show.legend=FALSE)+
  theme_minimal()+
  labs(title="Impulse Purchase Frequency")
save_plot(p_impulse,"impulse_purchase_distribution.png")

# Saving Habits
saving_summary <- finance %>% count(saving_habit) %>% mutate(pct=100*n/sum(n))
p_save <- ggplot(saving_summary,aes(saving_habit,n,fill=saving_habit))+
  geom_col(show.legend=FALSE)+
  geom_text(aes(label=paste0(round(pct,1),"%")),vjust=-0.3)+
  theme_minimal()+
  labs(title="Saving Habits")
save_plot(p_save,"saving_habits_bar.png")

# Investment
invest_summary <- finance %>% count(investment) %>% mutate(pct=100*n/sum(n))
p_inv <- ggplot(invest_summary,aes(investment,n,fill=investment))+
  geom_col(show.legend=FALSE)+
  geom_text(aes(label=paste0(round(pct,1),"%")),vjust=-0.3)+
  theme_minimal()+
  labs(title="Investment Status")
save_plot(p_inv,"investment_distribution.png")

# Income vs Saving
income_vs_saving <- finance %>%
 count(monthly_income,saving_habit) %>%
 group_by(monthly_income) %>%
 mutate(Percentage=100*n/sum(n)) %>% ungroup()

p_income_save <- ggplot(income_vs_saving,
 aes(monthly_income,Percentage,fill=saving_habit))+
 geom_col(position="dodge")+
 theme_minimal()+
 theme(axis.text.x=element_text(angle=45,hjust=1))+
 labs(title="Income vs Saving Habits",y="Percentage",x="Monthly Income")
save_plot(p_income_save,"income_vs_saving.png",9,6)

# Saver Investor Gap
saving_vs_investment <- finance %>%
 count(saving_habit,investment) %>%
 group_by(saving_habit) %>%
 mutate(Percentage=100*n/sum(n)) %>% ungroup()

p_gap <- ggplot(saving_vs_investment,
 aes(investment,Percentage,fill=investment))+
 geom_col(show.legend=FALSE)+
 facet_wrap(~saving_habit)+
 theme_minimal()+
 labs(title="Saver–Investor Gap")
save_plot(p_gap,"saver_investor_gap.png",10,6)

# Financial Confidence
p_hist <- ggplot(finance,aes(financial_confidence))+
 geom_histogram(binwidth=1,fill="steelblue")+
 theme_minimal()+
 labs(title="Financial Confidence Histogram")
save_plot(p_hist,"financial_confidence_histogram.png")

p_box <- ggplot(finance,aes(x="",y=financial_confidence))+
 geom_boxplot(fill="lightblue")+
 theme_minimal()+
 labs(title="Financial Confidence Boxplot",x="")
save_plot(p_box,"financial_confidence_boxplot.png")

# Motivation to Save
motivation <- finance %>%
 separate_rows(motivation,sep=",") %>%
 mutate(motivation=trimws(motivation)) %>%
 filter(motivation!="") %>%
 count(motivation,sort=TRUE)

p_mot <- ggplot(motivation,aes(reorder(motivation,n),n))+
 geom_col(fill="darkgreen")+
 coord_flip()+theme_minimal()+
 labs(title="Motivations to Save",x="",y="Count")
save_plot(p_mot,"motivation_to_save.png")

# Investment Influence
influence <- finance %>% count(investment_influence,sort=TRUE)
p_inf <- ggplot(influence,aes(reorder(investment_influence,n),n))+
 geom_col(fill="purple")+
 coord_flip()+theme_minimal()+
 labs(title="Investment Decision Influence",x="",y="Count")
save_plot(p_inf,"investment_influence.png")

cat("Module 3 completed. Charts saved to images/ folder.\n")


###############################################################
# PERSONAL FINANCE HABITS ANALYSIS
# Module 4 : Results, Export & Project Summary
# Requires Module 1 (finance dataframe)
###############################################################

library(tidyverse)

dir.create("results", showWarnings = FALSE)

# ---------------------------------------------------------
# Export Core Tables (recreate if not already in workspace)
# ---------------------------------------------------------

export_freq <- function(data, column, filename){
  tbl <- data %>%
    count(.data[[column]], sort = TRUE) %>%
    mutate(Percentage = round(100 * n / sum(n), 2))
  write.csv(tbl,
            file.path("results", filename),
            row.names = FALSE)
  tbl
}

age_tbl          <- export_freq(finance,"age","age_summary.csv")
gender_tbl       <- export_freq(finance,"gender","gender_summary.csv")
occupation_tbl   <- export_freq(finance,"occupation","occupation_summary.csv")
income_tbl       <- export_freq(finance,"monthly_income","income_summary.csv")
expense_tbl      <- export_freq(finance,"expense_tracking","expense_tracking_summary.csv")
saving_tbl       <- export_freq(finance,"saving_habit","saving_summary.csv")
investment_tbl   <- export_freq(finance,"investment","investment_summary.csv")
impulse_tbl      <- export_freq(finance,"impulse_purchase","impulse_purchase_summary.csv")
spending_tbl     <- export_freq(finance,"monthly_spending","monthly_spending_summary.csv")

# ---------------------------------------------------------
# Overall Summary
# ---------------------------------------------------------

summary_report <- data.frame(
  Metric = c(
    "Total Respondents",
    "Total Variables",
    "Missing Values",
    "Duplicate Rows",
    "Average Financial Confidence",
    "Median Financial Confidence",
    "Standard Deviation"
  ),
  Value = c(
    nrow(finance),
    ncol(finance),
    sum(is.na(finance)),
    sum(duplicated(finance)),
    round(mean(finance$financial_confidence, na.rm=TRUE),3),
    round(median(finance$financial_confidence, na.rm=TRUE),3),
    round(sd(finance$financial_confidence, na.rm=TRUE),3)
  )
)

write.csv(summary_report,
          "results/project_summary.csv",
          row.names = FALSE)

# ---------------------------------------------------------
# Key Findings
# ---------------------------------------------------------

top_expense <- expense_tbl %>% arrange(desc(n)) %>% slice(1)
top_occ <- occupation_tbl %>% arrange(desc(n)) %>% slice(1)
top_income <- income_tbl %>% arrange(desc(n)) %>% slice(1)

findings <- tibble(
  Finding = c(
    "Most common expense tracking method",
    "Largest occupation group",
    "Most common income group",
    "Average financial confidence"
  ),
  Value = c(
    as.character(top_expense$expense_tracking),
    as.character(top_occ$occupation),
    as.character(top_income$monthly_income),
    round(mean(finance$financial_confidence, na.rm=TRUE),2)
  )
)

write.csv(findings,
          "results/key_findings.csv",
          row.names = FALSE)

# ---------------------------------------------------------
# Recommendations
# ---------------------------------------------------------

recommendations <- tibble(
  Recommendation = c(
    "Encourage digital expense tracking through user-friendly finance apps.",
    "Promote financial literacy workshops on budgeting and investing.",
    "Introduce micro-saving and micro-investing strategies for lower-income groups.",
    "Improve awareness of long-term investment options.",
    "Conduct future surveys with larger and more diverse samples."
  )
)

write.csv(recommendations,
          "results/recommendations.csv",
          row.names = FALSE)

# ---------------------------------------------------------
# Console Report
# ---------------------------------------------------------

cat("\n=====================================\n")
cat(" PERSONAL FINANCE HABITS ANALYSIS\n")
cat("=====================================\n\n")

cat("Total Respondents :", nrow(finance), "\n")
cat("Total Variables   :", ncol(finance), "\n")
cat("Missing Values    :", sum(is.na(finance)), "\n")
cat("Duplicate Rows    :", sum(duplicated(finance)), "\n\n")

cat("Average Financial Confidence :",
    round(mean(finance$financial_confidence, na.rm=TRUE),2), "\n\n")

cat("Top Expense Tracking Method :",
    as.character(top_expense$expense_tracking), "\n")

cat("Top Occupation :",
    as.character(top_occ$occupation), "\n")

cat("Top Income Group :",
    as.character(top_income$monthly_income), "\n\n")

cat("Generated Files:\n")
cat("- CSV summaries -> results/\n")
cat("- Charts (from Module 3) -> images/\n\n")

cat("Project completed successfully.\n")
cat("GitHub repository is ready.\n")

# ---------------------------------------------------------
# Session Info
# ---------------------------------------------------------
capture.output(sessionInfo(),
               file = "results/session_info.txt")

cat("\nSession information saved to results/session_info.txt\n")
