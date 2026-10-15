create database marketdatabase;

use marketdatabase;

----------------------------------------------------------------------------------------
-- What is the overall campaign subscription rate?
select count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing;

-- Which job categories have the highest subscription rates?
select job, count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by job
order by subscription_rate desc;

-- Which age groups are most likely to subscribe?
select
	case
		when age <= 30 then '18-30'
		when age <= 45 then '31-45'
		when age <= 60 then '46-60'
		else '60+'
	end as age_group,
    count(*) as total,
    sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by age_group
order by subscription_rate desc;

-- Does education level affect subscription?
select education, count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by education
order by subscription_rate desc;

-- Does marital status affect subscription?
select marital, count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by marital
order by subscription_rate desc;

-- Does having a housing loan affect subscription?
select housing, count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by housing
order by subscription_rate desc;

-- Does having a personal loan affect subscription?
select loan, count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by loan
order by subscription_rate desc;

-- Which contact method has the highest conversion rate?
select contact, count(*) as total, sum(y='yes') as subscribed,
		round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by contact
order by subscription_rate desc;

-- Which months have the highest subscription rates?
select month, count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by month
order by subscription_rate desc;

-- How does the number of campaign contacts affect subscription, and is there an optimal number of contacts before conversion drops?
select campaign, count(*) as total, sum(y='yes') as subscribed,
	round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by campaign
order by campaign;

-- Does the previous campaign's outcome (poutcome) predict current subscription?
select poutcome, count(*) as total, sum(y='yes') as subscribed,
		round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by poutcome
order by subscription_rate desc;

-- Does account balance affect subscription?
select y, avg(balance) as avg_balance
from marketing
group by y;

-- Does call duration relate to subscription? (note: duration is only known after the call, not usable for targeting)
select y, avg(duration) as avg_duration
from marketing
group by y;

-- Which customer segments have the highest and lowest conversion rates, and who should the marketing team prioritize or deprioritize?
select job, marital, education, count(*) as total, sum(y='yes') as subscribed,
		round(sum(y='yes') * 100 / count(*),2) as subscription_rate
from marketing
group by job, marital, education
order by subscription_rate desc
limit 10;