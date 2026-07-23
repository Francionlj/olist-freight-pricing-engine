
<div align="center">
  <h1>Olist Freight Pricing Engine</h1>

  <p>
    Freight pricing, delivery performance, and customer satisfaction analysis for Brazilian e-commerce data.
  </p>

  [![Project Status](https://img.shields.io/badge/Status-In%20progress-2E8B57?style=for-the-badge)](https://github.com/Francionlj/olist-freight-pricing-engine)
  [![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
  [![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org/)
  [![Dataset](https://img.shields.io/badge/Dataset-Olist%20Public%20Dataset-6C63FF?style=for-the-badge)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
  [![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
</div>

---

## Overview

Analytical project for freight pricing, delivery performance, and customer satisfaction in the Brazilian e-commerce market. The goal is to transform Olist order data into business insights that support logistics monitoring, seller management, and freight pricing decisions.

## Business Problem

This project focuses on two operational challenges:

1. **Logistics-driven customer dissatisfaction**: delayed deliveries and inconsistent seller performance can reduce customer satisfaction and increase churn risk.
2. **Freight pricing decisions**: freight values need to reflect product, seller, customer, route, and delivery characteristics without damaging customer conversion.

## Project Goals

- Build a clean analytical base table for logistics and pricing analysis.
- Monitor delivery service levels using order dates and estimated delivery dates.
- Identify sellers, routes, states, and product categories associated with higher delay risk.
- Understand how freight value varies by geography, product attributes, and order characteristics.
- Prepare the data foundation for regression and prediction of freight value.

## Dataset

The analysis uses the **Brazilian E-Commerce Public Dataset by Olist**, with real marketplace orders from 2016 to 2018. The processed analytical base includes:

- Order and item identifiers
- Seller and customer information
- Product attributes
- Payment information
- Review scores
- Delivery timestamps
- Seller and customer geolocation
- Freight and product prices

## Analytical Workflow

The notebooks are organized as a progressive analysis pipeline:

| Step | Notebook | Focus |
| --- | --- | --- |
| 1 | `01_eda_and_bi.ipynb` | Exploratory data analysis, data quality, descriptive summaries, BI-ready charts |
| 2 | `02_data_distributions_and_sampling.ipynb` | Data distributions, variability, sampling, and sample-based reasoning |
| 3 | `03_statistical_experiments_and_significance_tests.ipynb` | Statistical experiments, hypothesis testing, significance, and business interpretation |
| 4 | `04_regression_and_prediction.ipynb` | Regression modeling, freight prediction, diagnostics, and prediction error analysis |

The current active notebook is:

```text
notebooks/01_eda_and_bi.ipynb
```

## Repository Structure

```text
├── data/
│   ├── raw/                  # Raw Olist data, such as the SQLite source database
│   └── processed/            # Processed analytical base tables
│       └── olist_merged.parquet
├── notebooks/                # Main analytical workflow
│   └── 01_eda_and_bi.ipynb
├── img/
│   ├── plots/                # Figures exported from notebooks
│   └── other/                # Diagrams and supporting images
├── assets/                   # Static assets reserved for documentation or dashboard use
├── scr/                      # Reserved for production code and Streamlit application
├── setup_env.sh              # Environment setup script
├── requirments.txt           # Python dependencies
├── LICENSE
└── README.md
```

## Figure Organization

Notebook charts should be exported to:

```text
img/plots/
```

Supporting images, diagrams, and reference visuals should be stored in:

```text
img/other/
```

## Tech Stack

- **Data processing**: `Pandas`, `NumPy`, `SQLite3`, `PySpark`
- **Statistics and modeling**: `SciPy`, `Statsmodels`
- **Visualization**: `Matplotlib`, `Seaborn`, `Plotly`
- **Notebook environment**: `Jupyter`, `IPython Kernel`
- **Dashboard layer**: `Streamlit` planned for interactive delivery

## Getting Started

### Automated setup

```bash
git clone https://github.com/Francionlj/olist-freight-pricing-engine.git
cd olist-freight-pricing-engine
bash setup_env.sh
source .venv/bin/activate
```

### Manual setup

```bash
git clone https://github.com/Francionlj/olist-freight-pricing-engine.git
cd olist-freight-pricing-engine

python3 -m venv .venv
source .venv/bin/activate

pip install --upgrade pip
pip install -r requirments.txt
```

## Running the Analysis

1. Place the raw Olist SQLite database in `data/raw/` if the processed table needs to be rebuilt.
2. Use `data/processed/olist_merged.parquet` as the main analytical base table.
3. Run the notebooks sequentially according to the analytical workflow.
4. Save generated charts under `img/plots/`.

## Expected Outputs

- Data quality assessment of the analytical base table.
- Delivery SLA and delay indicators.
- Freight, seller, customer, product, and route-level summaries.
- Statistical evidence for business hypotheses.
- Regression-ready dataset for freight value prediction.
- Visual outputs that can later feed a Streamlit dashboard.

## Business Impact

This project supports:

- **SLA monitoring**: identify late deliveries and underperforming sellers.
- **Customer satisfaction analysis**: evaluate how delivery performance relates to review scores.
- **Freight pricing intelligence**: understand the main drivers of freight value.
- **Prediction readiness**: structure the data for robust freight value modeling.
