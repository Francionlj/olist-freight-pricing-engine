# Olist Freight Pricing Engine

A robust analytical engine for data-driven logistics and pricing strategies in the Brazilian e-commerce market. This project transforms raw e-commerce data into actionable insights for executive decision-making.

## 🎯 Problem Statement

This project addresses two critical operational challenges in the Brazilian e-commerce sector:
1.  **Logistics-Induced Customer Churn**: Late deliveries and inconsistent service levels from third-party sellers lead to customer dissatisfaction and churn.
2.  **Dynamic Freight Pricing**: The absence of a robust pricing model that adapts to market conditions can erode profit margins or alienate price-sensitive customers.

## 💡 Solution

This repository develops a data-driven engine to solve these challenges by:
*   **Enforcing Service Level Agreements (SLAs)**: Providing statistical proof to monitor and enforce delivery commitments from third-party sellers.
*   **Implementing Robust Pricing Models**: Developing regression models to protect profit margins without sacrificing customer conversion.
*   **Bridging Analytics and Engineering**: Combining rigorous statistical analysis with modern software engineering to deliver a reliable and scalable solution.

## 🗄️ Dataset

The analysis is powered by the **Brazilian E-Commerce Public Dataset by Olist**, which contains over 100,000 real-world orders from 2016 to 2018. This rich, multidimensional dataset includes:
*   Customer Demographics & Geolocation
*   Order Timestamps & Payment Methods
*   Product Attributes & Seller Profiles
*   Customer Satisfaction Reviews

## 🏗️ Project Architecture

The repository follows best practices for data science, ensuring a clear separation of concerns between data processing, modeling, and deployment.

```text
├── data/
│   ├── raw/               # Immutable raw data from Olist (git-ignored)
│   └── processed/         # Analytical Base Tables (ABT) for modeling (git-ignored)
├── notebooks/             # Sequential experimental environment for analysis
│   ├── 01_eda_and_bi.ipynb
│   ├── 02_probability_and_simulation.ipynb
│   ├── 03_statistical_inference.ipynb
│   ├── 04_anova_and_adherence.ipynb
│   └── 05_robust_regression.ipynb
├── src/                   # Production-ready code and Streamlit application
│   └── app.py             # Main entry point for the interactive web dashboard
├── assets/                # Static files (images, diagrams) for documentation
├── .gitignore             # Specifies intentionally untracked files to ignore
├── requirements.txt       # Application dependencies for cloud deployment
└── README.md              # Executive summary and technical documentation
```

## 🛠️ Tech Stack

The project leverages a modern data science stack to ensure scalability and mathematical accuracy:

*   **Data Processing**: `PySpark` for distributed processing and `SQLite3` for initial data exploration.
*   **Numerical & Statistical Analysis**: `NumPy`, `Pandas`, `SciPy`, and `Statsmodels` for descriptive statistics, Monte Carlo simulations, hypothesis testing, and regression modeling.
*   **Data Visualization**: `Seaborn` and `Matplotlib` for exploratory data analysis (EDA) and diagnostics.
*   **Web Application**: `Streamlit` and `Plotly` for creating an interactive executive dashboard.

## 🚀 Getting Started

To run this project locally, follow these steps:

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/olist-freight-pricing-engine.git
    cd olist-freight-pricing-engine
    ```

2.  **Create and activate a virtual environment:**
    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```

3.  **Install the dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4.  **Download the data:**
    Place the raw Olist dataset into the `data/raw/` directory.

5.  **Run the notebooks:**
    Execute the Jupyter notebooks in sequential order to perform the analysis.

6.  **Launch the dashboard:**
    ```bash
    streamlit run src/app.py
    ```

## 📈 Key Findings & Business Impact

The models and analyses in this project provide a clear framework for:
*   **Reducing Churn**: Identifying underperforming sellers and enforcing SLAs to improve customer retention.
*   **Optimizing Pricing**: Implementing a dynamic pricing strategy that balances profitability and customer acquisition costs.
*   **Data-Driven Decisions**: Empowering leadership with an interactive dashboard to explore data and validate business hypotheses in real-time.
