# Retail Sales SQL Analysis
**Author:** Dhrumi Kansara | MS Business Analytics, Arizona State University  
**Tools:** MySQL | **Domain:** Retail Business Analytics  
**Dataset:** Sample Superstore — 9,994 orders | 4 regions | 3 categories | 17 sub-categories

---

## Business Problem
A retail company wants to understand what is truly driving profitability and what is silently destroying it. This analysis examines 9,994 transactions across product categories, regions, customers, and discount strategies to surface actionable insights for leadership decision-making.

---

## Six Business Questions Answered

| # | Question |
|---|----------|
| 1 | Which product categories generate the most profit? |
| 2 | Which regions are underperforming relative to their sales volume? |
| 3 | Which products have strong sales but are losing money? |
| 4 | Who are the top 10 customers by lifetime value? |
| 5 | Which sub-categories have the best and worst profit margins? |
| 6 | Does heavy discounting actually destroy profit? |

---

## Key Findings

### Finding 1 — Technology leads profit; Furniture is a margin problem
Technology generated **$145,387 in profit at a 17.4% margin** despite not being the highest in sales volume. Furniture, by contrast, earned only **$16,981 in profit at a 2.3% margin** — the lowest margin of all three categories despite $733,046 in sales. Furniture is generating revenue but barely contributing to the bottom line.

| Category | Total Sales | Total Profit | Margin % |
|----------|------------|--------------|----------|
| Technology | $835,900 | $145,387 | 17.4% |
| Office Supplies | $703,503 | $120,490 | 17.1% |
| Furniture | $733,047 | $16,981 | 2.3% |

---

### Finding 2 — Central region is the biggest underperformer
Central had the **second highest sales ($497,801) but the lowest profit ($40,129) at only 8.1% margin** less than half the margin of the West (14.9%). The East and West regions are significantly more efficient at converting sales into profit. Central's low margin despite high volume strongly suggests a discounting or pricing problem at the regional level.

| Region | Total Sales | Total Profit | Margin % |
|--------|------------|--------------|----------|
| West | $713,471 | $106,021 | 14.9% |
| East | $672,195 | $90,672 | 13.5% |
| South | $388,984 | $46,036 | 11.8% |
| Central | $497,801 | $40,129 | 8.1%  |

---

### Finding 3 — 10 high-selling products are actively losing money
Products with over $1,000 in sales but negative total profit all victims of excessive discounting. The worst offender: the **Lexmark Printer with $16,830 in sales but -$4,590 in profit**. Tables and Bookcases appear repeatedly, confirming the Furniture discount problem.

| Product | Category | Sales | Profit | Avg Discount |
|---------|----------|-------|--------|--------------|
| Lexmark MX611dhe Printer | Technology | $16,830 | -$4,590 | 40% |
| Cubify CubeX 3D Printer | Technology | $8,000 | -$3,840 | 50% |
| Chromcraft Conference Tables | Furniture | $9,918 | -$2,876 | 28% |
| Bush Conference Table | Furniture | $9,545 | -$1,934 | 53% |
| GBC DocuBind P400 | Office Supplies | $17,965 | -$1,878 | 45% |

---

### Finding 4 — Top customers reveal a VIP retention risk
Sean Miller is the #1 customer by lifetime value at **$23,669 — but generated -$1,787 in profit**, meaning the company is actually losing money serving its highest-revenue customer. Tamara Chand ($18,403 sales, $8,728 profit) and Raymond Buch ($14,345 sales, $6,807 profit) are the true most valuable customers when profit is factored in.

| Customer | Segment | Lifetime Value | Profit Generated |
|----------|---------|---------------|-----------------|
| Sean Miller | Home Office | $23,669 | **-$1,787**  |
| Tamara Chand | Corporate | $18,403 | $8,728  |
| Raymond Buch | Consumer | $14,345 | $6,807  |
| Tom Ashbrook | Home Office | $13,724 | $4,599  |
| Adrian Barton | Consumer | $12,182 | $5,363  |

---

### Finding 5 — Labels, Paper, and Envelopes are the hidden profit stars; Tables are the worst
The highest-margin sub-categories are small office supply items — **Labels at 44.4%, Paper at 43.4%, Envelopes at 42.1%**. These low-ticket items are extremely efficient. Meanwhile, **Tables have a -8.6% margin** and **Bookcases -3.0%** both are actively destroying value. Machines sit at just 1.8% margin, barely breaking even.

| Sub-Category | Sales | Profit | Margin % |
|-------------|-------|--------|----------|
| Labels | $12,486 | $5,546 | 44.4%  |
| Paper | $75,356 | $32,712 | 43.4%  |
| Envelopes | $15,339 | $6,461 | 42.1%  |
| Machines | $189,239 | $3,385 | 1.8% |
| Bookcases | $114,880 | -$3,473 | -3.0%  |
| Tables | $206,966 | -$17,725 | -8.6%  |

---

### Finding 6 — Heavy discounting is a confirmed profit killer
Orders with **zero discount averaged $68.11 profit per order**. Orders with **40%+ discounts averaged -$111.10 loss per order** a $179 swing. Despite generating $127,371 in sales, the 40%+ discount tier produced **-$98,328 in total profit**. The 21-40% discount tier also lost money (-$35,826). Only orders with 0-20% discounts are profitable.

| Discount Tier | Orders | Total Sales | Total Profit | Avg Profit/Order |
|--------------|--------|------------|--------------|-----------------|
| 0% — No Discount | 4,657 | $1,072,777 | **$317,184** | $68.11 |
| 1–20% Discount | 3,693 | $838,235 | **$99,827** | $27.03 |
| 21–40% Discount | 459 | $234,066 | **-$35,826** | -$78.05 |
| 40%+ Heavy Discount | 885 | $127,371 | **-$98,328** | -$111.10 |

---

## Business Recommendations

**1. Immediately cap discounts at 20% company-wide**
Orders above 20% discount are net-negative on average. The 40%+ tier alone lost $98,328 despite $127K in sales. No discount above 20% should be approved without VP sign-off.

**2. Investigate and restructure Central region pricing**
Central region's 8.1% margin vs West's 14.9% cannot be explained by demand alone. Conduct a discount audit for Central region sales reps they are likely over-discounting to close deals.

**3. Reprice or discontinue Tables and Bookcases**
Tables lost $17,725 at -8.6% margin across 307 orders. Either raise base prices, eliminate discounting entirely on these items, or remove them from the catalog. They are the single largest profit drain.

**4. Prioritize Paper, Labels, and Envelopes in marketing**
These items have 42-44% margins and high order volumes. Bundling promotions around these products would significantly boost overall profitability with minimal investment.

**5. Review Sean Miller's account profitability**
The top customer by revenue is unprofitable. Audit the discount and return history on this account. A "top customer" losing you money is a business risk, not an asset.

**6. Double down on Technology (excluding over-discounted machines)**
Technology has the best margin at 17.4%. Copiers alone have a 37.3% margin. Marketing investment should shift toward Technology accessories and copiers.

---

## 📁 Repository Files

| File | Description |
|------|-------------|
| `Sample_Superstore.csv` | Raw dataset (9,994 rows) |
| `analysis_queries.sql` | All 6 annotated SQL queries |
| `q1_category_profit.png` | Category profit results |
| `q2_regional_performance.png` | Regional performance results |
| `q3_losing_money.png` | Products with negative profit |
| `q4_top_customers.png` | Top 10 customer LTV |
| `q5_subcategory_margins.png` | Sub-category margin ranking |
| `q6_discount_impact.png` | Discount tier profit analysis |

---

## 🛠️ How to Reproduce
1. Install [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) (free)
2. Create a new schema: `CREATE DATABASE superstore_analysis;`
3. Import `Sample_Superstore.csv` using the Table Data Import Wizard
4. Open `analysis_queries.sql` and run each query block

---

## 🔗 Connect
**LinkedIn:** [linkedin.com/in/dhrumikansara](https://linkedin.com/in/dhrumikansara)  
**Email:** dkansar4@asu.edu
