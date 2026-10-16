# Bank Marketing Campaign Analysis

This is an end-to-end portfolio project analyzing a bank's telemarketing campaign for term deposits. The goal was not just to report the overall conversion rate, but to understand *who* subscribes and *how* the campaign should be run, using Python, MySQL and Power BI.

---

## 🚀 The Business Problem
A bank ran a telemarketing campaign to sell term deposits, but only a small share of the customers it called subscribed. The business had campaign data but no clear view of what separated subscribers from everyone else, creating a critical information gap:
* **No Clear Profile:** They didn't know which customer groups (job, age, education, loans) were most likely to subscribe.
* **No Campaign Guidance:** They didn't know the best contact method, the best timing, or how many calls were too many.
* **Wasted Effort:** Calls were spread evenly instead of focused on the customers most likely to convert.

## 🎯 Project Objectives
1.  **Inspect and prepare** the campaign data, including unknown values and outliers.
2.  **Analyze** subscription rate across customer profile and campaign factors.
3.  **Identify** which customer segments the marketing team should prioritize or deprioritize.
4.  **Monitor** campaign results on an interactive Power BI dashboard.

---

## 🛠️ Technologies Used
* **Data Inspection & EDA:** Python (Pandas, Seaborn, Matplotlib)
* **Database:** MySQL (loaded with SQLAlchemy and PyMySQL)
* **Data Analysis:** SQL
* **Data Visualization:** Power BI
* **IDE:** Jupyter Notebook

---

## 🔄 My End-to-End Process
[Raw Data (CSV)] ➔ [Inspection & EDA in Python] ➔ [Load into MySQL] ➔ [Segment & Campaign Analysis in SQL] ➔ [Interactive Dashboard in Power BI]

---

## 📊 Key Insights & Dashboards

### 1. Customer Profile Dashboard
This dashboard shows which types of customers are most likely to subscribe.

<img width="1220" height="692" alt="image" src="https://github.com/user-attachments/assets/084e904b-9332-4686-8bdb-a6e53e21de9f" />


* **Key Insight:** **Students** and **retired** customers have the highest subscription rates (**28.7%** and **22.8%**), against an overall rate of **11.7%**.
* **Other Insights:**
    * The overall subscription rate is **11.7%** (5,289 of 45,211 customers).
    * The **60+** age group subscribes the most (**42.3%**), followed by ages 18-30 (**16.3%**), while ages 31-60 are at about **9.8%**.
    * Customers with tertiary education subscribe at **15.0%**, against **8.6%** for primary education.
    * Customers without a housing loan subscribe at **16.7%**, against **7.7%** for those with one, and customers without a personal loan subscribe at **12.7%**, against **6.7%** for those with one.

### 2. Campaign Performance Dashboard
This dashboard shows how the campaign itself affects results: timing, contact method and call frequency.

<img width="1222" height="695" alt="image" src="https://github.com/user-attachments/assets/9d1ca86a-c2be-4758-bddd-28b16e6dcc84" />


* **Key Insight:** Customers with a successful previous campaign outcome subscribe at **64.7%**, against **11.7%** overall, making them the best group to target.
* **Other Insights:**
    * Subscription rate falls from **14.6%** on the first contact to about **11%** on the second and third, and below **8%** from the fifth contact onward, so extra calls bring little return.
    * Cellular contact converts at **14.9%** and telephone at **13.4%**, while customers with an unknown contact type convert at only **4.1%**.
    * March has the highest subscription rate (**52.0%**, but only 477 customers called) and May the lowest (**6.7%**), even though May had the most calls (13,766).
    * Subscribers have longer calls on average (**537** vs **221** seconds), but call duration is only known *after* the call, so it cannot be used to decide who to call.
* **Recommendation:** Prioritize students, retired customers and those with a successful previous outcome (for example, single students with secondary education convert at **30.0%**), cap follow-up calls at about **3**, and deprioritize married blue-collar customers with primary education (**5.0%** across 2,920 customers).

---

## Thank you so much for checking out my project. Hope you like it!
