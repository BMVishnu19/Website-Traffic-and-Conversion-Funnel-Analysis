# Website-Traffic-and-Conversion-Funnel-Analysis
# Project Overview
This project focuses on performing a comprehensive customer segmentation analysis using SQL. The goal is to transform raw e-commerce data into actionable business insights by identifying and analyzing distinct customer groups based on their behavior. The analysis is built upon an RFM (Recency, Frequency, Monetary) model, supplemented by additional behavioral metrics, to provide a holistic view of the customer base.The dataset for this project is sourced form Kaggle.

# Key Insights

## Phase 1: Data Validation & Initial Exploration
Data Integrity: The initial queries confirm that the dataset is clean, with no duplicate customer IDs or missing values in key columns. This ensures the reliability of all subsequent analyses.

Customer Distribution: The analysis provides a foundational understanding of the customer base by revealing how customers are distributed across predefined segments and different recency buckets.

## Phase 2: Core Behavioral Analysis
RFM Metrics: This phase validates the core RFM model, showing that the most valuable segments (e.g., "Gold") have the lowest average recency and the highest average frequency and monetary values.

Customer Behavior: Insights reveal a strong positive correlation between clicks and pages viewed, suggesting an engaging site design. Additionally, customers who convert (make a purchase) generally have higher engagement metrics than non-converters.

Targeted Opportunities: The analysis identifies specific groups for targeted marketing. For example, customers with high wishlist adds but who haven't yet purchased can be targeted with specific promotions. High cart abandonment rates for low-value tiers suggest a need to optimize the checkout process for these users.

## Phase 3: Advanced Analysis & Deeper Insights
Customer Value: This phase provides a more nuanced understanding of customer value. It identifies the top 5 customers within each segment by monetary value and recency, which is highly actionable for VIP programs. It also provides a proxy for Customer Lifetime Value (LTV) for each segment, guiding long-term investment.

Operational Health: Queries in this phase highlight operational pain points. For example, a high return rate for certain segments can signal issues with product quality or fulfillment. It also identifies customers with high frequency but low monetary value, which presents an opportunity for upselling.

Retention and Conversion: Advanced analysis identifies customers for win-back campaigns (high-value but low-recency customers) and flags users with recent visits but high cart abandonment, who are prime targets for retargeting efforts. Metrics like "Monetary Value per Session" help gauge the efficiency of different customer segments at generating revenue per visit.

