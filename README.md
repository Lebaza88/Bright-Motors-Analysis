# Bright-Motors-Analysis
Bright Motors’ new Head of Sales aims to expand the dealership network, improve sales performance, and optimize inventory.

Key Objective (as per Case Study Brief)

Deliver insights that help grow Bright Motors’ sales and profitability by answering:
- Which car **makes and models** generate the most revenue?
- What is the relationship between **price, mileage, and year of manufacture**?
- Which **regions or locations** have the highest sales volumes?
- What are the emerging **trends in customer purchasing preferences**?
- What **recommendations** can increase dealership profitability and efficiency?

**Note:** All monetary values were cleaned and converted to numeric format for accurate calculations.

Analytical tools applied

| Category              | Analytical Tools                          |
|-----------------------|-------------------------------------------|
| Project Planning      | Miro                                      |
| Data Processing       | Snowflake + SQL                           |
| Analysis & Visualization | Microsoft Excel (Pivot Tables & Charts) / Power BI |
| Presentation          | Microsoft PowerPoint                      |
| Version Control       | GitHub                                    |

Methodology
Task 1 – Data Planning on Miro**
- Designed full **Mind mapping, Data Flow chart and Gantt chart**
- Identified key deliverables aligned with the new Head of Sales’ objectives

Task 2 – Data Processing**
- Converted Excel file into CSV and loaded into Snowflake
- Performed data cleaning (removed duplicates, handled missing values, converted text prices to numeric)
- Created calculated fields: Total Revenue, Profit Margin, and performance tiers
- Grouped transactions by time periods (month/quarter)

Task 3 – Data Analysis in Excel 
- Built interactive Pivot Tables and Charts showing:
  - Revenue by Make and Model
  - Price vs Mileage vs Year trends
  - Regional sales performance
  - Fuel type and year distribution

Task 4 – Head of Sales Presentation**
- Professional 15–20 minute executive presentation with clear visuals and strategic recommendations

 Key Insights
Full detailed insights and charts are available in `presentation/BrightMotors_Presentation.pptx` and `insights/Key_Insights_Summary.md`.

**Key insights are:**
- Top revenue-generating makes and models identified
- Strong correlations between year of manufacture, mileage, and selling price
- Clear regional performance differences across provinces
- Customer preference trends by fuel type and vehicle age

Recommendations for the Head of Sales
1. **Inventory Strategy** – Focus stock on top-performing makes and models
2. **Pricing Optimization** – Adjust pricing strategy based on mileage and year insights
3. **Regional Focus** – Allocate marketing budget and resources to high-performing provinces
4. **Promotional Campaigns** – Targeted promotions for low-consumption periods and vehicle segments


 Suggestions
- Automate monthly sales performance reports 
- Integrate real-time inventory and pricing analytics
- Expand analysis to include customer demographics and repeat purchase behavior

Guide to explore this Repository
1. Start with `README.md`
2. View Miro diagram for architecture and project plan
3. Open `data/processed/car_sales_processed.xlsx` for interactive Pivot Tables & Charts
4. Review `sql/car_sales_queries.sql` for all analysis queries
5. Open `presentation/BrightMotors_Presentation.pptx` for the final executive deck

**This project was completed in line with the official BrightLearn Case Study brief.**

**Author:** Tshepo Morake (Junior Data Analyst)  
**Location:** Johannesburg, South Africa
