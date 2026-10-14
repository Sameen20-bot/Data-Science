# Data Science 📊

A structured collection of notebooks, scripts, and mini-projects documenting a complete data science learning journey — from Python fundamentals and SQL to machine learning, deep learning, time series forecasting, and BI dashboards.

## 📁 Repository Structure

```
Data Science/
├── Python/                                   # Core Python fundamentals
├── Python Request Module/                    # Working with the requests library (GET, POST, PUT, files, images)
├── EDA/                                      # Exploratory Data Analysis
├── Statistics/                               # Statistical hypothesis testing (Excel worksheets)
├── MYSQL/                                    # SQL scripts + Python–MySQL connectivity
├── Excel Analysis/                           # Excel for data analysts (cleaning → dashboard)
├── PowerBI Analysis/                         # Power BI reports, visuals & datasets
├── Machine Learning/                         # Supervised & unsupervised ML
│   ├── Regression/
│   ├── Classification Other Algos/
│   ├── Bagging And Boosting/
│   ├── HPO/
│   ├── Feature Engineering/
│   └── Clustering/
├── Deep Learning/                            # Neural networks
├── Time Series Analysis And Forecasting/     # Forecasting models
│   ├── Data Cleaning Practice/
│   ├── Arima Model/
│   └── Facebook Prophet/
├── Streamlit/                                # Interactive web apps & mini-tools
└── The-Complete-Machine-Learning-Pipeline.pptx   # End-to-end ML pipeline overview
```

## 🐍 Python

Foundational Python concepts practiced through notebooks:

- Control structures, loops, functions
- Lists, tuples, sets, dictionaries, strings
- File handling
- Object-Oriented Programming (OOP)
- Map, Reduce, and Filter
- NumPy and Pandas basics
- Data visualization with Matplotlib and Seaborn

## 🌐 Python Request Module

Practice scripts covering the `requests` library:

- Basic GET requests
- POST, PUT requests
- Query parameters
- Downloading files and images
- Working with public APIs (e.g., PokeAPI)

## 🔍 EDA (Exploratory Data Analysis)

- Handling missing values
- Outlier detection and treatment
- Feature encoding
- Feature scaling
- Feature binning
- Univariate, bivariate & multivariate analysis on the Churn Modelling dataset
- End-to-end customer churn analysis with insight write-ups and visual summaries

## 📈 Statistics

Hypothesis testing worked out step by step in Excel worksheets:

| Test | Purpose |
|------|---------|
| Z-test | Compare a sample mean against a known population mean |
| T-test | Compare means with small samples / unknown variance |
| ANOVA | Compare means across three or more groups |
| Chi-square | Test association between categorical variables |
| Correlation | Measure strength & direction of a linear relationship |

## 🗄️ MySQL

SQL practiced from the ground up, plus querying MySQL directly from Python:

- **Basics & DML** — database/table creation, `INSERT`, `UPDATE`, `DELETE`, constraints
- **Querying** — filtering, `GROUP BY`, aggregate functions, `ORDER BY`
- **Joins** — inner, left, right and self joins on a customers/orders schema
- **Subqueries & nested queries** — comparing rows against aggregate results
- **String & date-time functions** — `DATEDIFF`, formatting, text manipulation
- **Pattern matching** — `LIKE` and `REGEXP`
- **Conditional logic** — `CASE WHEN`
- **Window functions** — ranking and running totals
- **Views & stored procedures**
- **Import / export** — loading the Telco Customer Churn dataset into MySQL and exporting results
- **Python–MySQL connectivity** — `pymysql` + `pandas.read_sql_query()` to pull SQL results straight into a DataFrame

## 📗 Excel Analysis

Excel workbooks following a data-analyst training track:

- Data entry and structured data layout
- Data cleaning — removing duplicates, blank rows, extra spaces, splitting columns
- Data validation
- Logical functions and incentive calculations
- Lookups — `VLOOKUP`, `VLOOKUP` with `MATCH`, `INDEX`/`MATCH`
- Date functions on project deadlines, employee and leave records
- Pivot tables across multiple product categories
- **End-to-end project** — a macro-enabled sales dashboard built from raw data

## 📊 PowerBI Analysis

Power BI report files (`.pbix`) with their source datasets and custom visual assets:

- **Mobile Models Project** — sales analysis across phone brands (Apple, Samsung, Xiaomi, Vivo, OnePlus) with KPI cards and brand icons
- **Project-BI / Project-BI-2** — multi-page reports built on tech product, vehicle and monthly order data (Jan–Apr 2024)
- **Visual types practiced** — funnel charts, waterfall charts, gauge charts, KPI trend visuals, scatter charts, tree maps, map charts, and custom slicers

## 🤖 Machine Learning

| Category | Topics Covered |
|----------|----------------|
| **Regression** | Simple, Multiple & Polynomial Linear Regression, Ridge & Lasso Regression, Feature Encoding |
| **Classification** | kNN, Decision Trees, Random Forest, Class Imbalance handling, model evaluation |
| **Bagging & Boosting** | Bagging Regression, Bagging vs Random Forest, Boosting techniques |
| **HPO** | Hyperparameter optimization (Breast Cancer dataset case study) |
| **Feature Engineering** | PCA, Kernel PCA, LDA, QDA, RFE, SFS, Chi-test |
| **Clustering** | K-Means clustering (Mall Customers dataset) |

## 🧠 Deep Learning

- **ANN** (Artificial Neural Network) — built and trained on the Churn Modelling dataset
- **LSTM** (Long Short-Term Memory) — applied to stock market time series data (NSE Tata Global)

## ⏳ Time Series Analysis & Forecasting

- Data cleaning practice — handling missing values, 3-sigma technique for outliers
- Time series decomposition
- **ARIMA** — stationarity testing, inverse transformation techniques, model building, and a solar energy generation forecasting project
- **Facebook Prophet** — univariate & multivariate forecasting, applied to Delhi climate data

## 🎈 Streamlit

From Streamlit basics to small working apps:

**Basics** — titles, headers, markdown, code blocks, images, lists, custom HTML/CSS, Lottie animations

**Core concepts** — forms, file uploaders, sidebars, session state, caching, callbacks

**Mini-apps**
- 🔗 **URL Shortener** — shorten links and copy them to clipboard
- 🖼️ **Image Editor** — upload an image and apply PIL filters
- 📝 **Keyword Density Checker** — word frequency analysis on pasted text
- ⏱️ **Timer** — countdown timer with time input
- 📈 **Data Visualizer** — upload data and plot it
- 🌸 **Seaborn Explorer** — switch between KDE, dist and pair plots from the sidebar

## 🛠️ Tools & Libraries

**Languages & databases:** Python · SQL (MySQL)

**Python libraries:** Pandas · NumPy · Matplotlib · Seaborn · Scikit-learn · Statsmodels · Facebook Prophet · TensorFlow/Keras · Streamlit · PyMySQL · Pillow · Requests

**BI & spreadsheets:** Power BI · Microsoft Excel

## ▶️ Usage

**Notebooks (`.ipynb`)**

```bash
pip install pandas numpy matplotlib seaborn scikit-learn statsmodels prophet tensorflow jupyter
jupyter notebook
```

Navigate to the relevant folder and open any notebook to explore the code and analysis.

**Streamlit apps**

```bash
pip install streamlit pyshorteners pyperclip pillow
streamlit run Streamlit/<filename>.py
```

**SQL scripts** — open the `.sql` files in MySQL Workbench (or any MySQL client) and run them. For `Python-MySql-Connectivity.ipynb`, install `pymysql` and update the connection details to match your local MySQL setup.

**Power BI & Excel** — `.pbix` files require Power BI Desktop; `.xlsm` files need macros enabled.

## 👩‍💻 Author

**Sameen Zaki**

GitHub: [@Sameen20-bot](https://github.com/Sameen20-bot)
