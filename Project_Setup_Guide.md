
# Project Setup Guide

## Step 1: Clone the Project from Git

First, clone the project repository from Git using the following command:

```sh
git clone <repository-url>
```
Replace `<repository-url>` with the actual URL of your repository.

## Step 2: Create a Data Directory

Create a directory named `data` in your project folder. This directory will be used to store your data file. Use the following command:

```sh
mkdir data
```

Place the file `P_Data_Extract_From_Africa_Development_Indicators` in the `data` directory.

## Step 3: Define Environment Variable for Data Directory

Define a variable named `DATA_FILES_PATH_DIGI_SA` in your `.env` file. This variable should contain the absolute path of the `data` directory created above. For example:

```
DATA_FILES_PATH_DIGI_SA=/absolute/path/to/your/project/data
```
Ensure you update the path appropriately based on your system.

## Step 4: Set Up Database Connection

Ensure that the database connection details are correctly set up in the `.env` file. You can copy these details from your previous `.env` file if they are already defined.

## Step 5: Work with Provided Files

The project includes four files:

- `clean_import_xl_data.ipynb`
- `import_API_data.ipynb`
- `apply_py_visualisation.ipynb`
- `json_query.sql`

### File Descriptions

1. **`clean_import_xl_data.ipynb`**
   - This notebook reads the source file in `.xlsx` format, cleans the data, and stores it in the following tables in your schema:
     - `data_digi_sa`
     - `countries_digi_sa`
     - `indicators_digi_sa`

2. **`import_API_data.ipynb`**
   - This notebook makes calls to the World Bank API and fetches data based on country, indicator code, and the years defined.
   - The fetched data is then stored in the `api_data_digi_sa` table.
   - The purpose of this API call is to fetch any missing data and update the existing tables or adapt them accordingly.

3. **`json_query.sql`**
   - This file provides SQL queries for extracting and analyzing the data fetched from the World Bank API.

4. **`apply_py_visualisation.ipynb`**
   - This notebook is used to read the `Dimensions/Measures` tables designed after data modeling in DBT (Data Build Tool).
   - It performs Python-based visualizations on the modeled data.

## Next Steps

1. **Analyze the Data for Improvements**
   - Review the current data and identify any opportunities for cleaning, enriching, or transforming the data further.

2. **Build a Data Model Using DBT**
   - Use DBT to build a data model.
   - Define your `Dimensions` and `Measures` while modeling your data.

3. **Adapt Visualizations**
   - Update the `apply_py_visualisation.ipynb` notebook to use the final tables.
   - Adapt the notebook to generate different charts and plots that provide insights into your data.

4. **Connect to Tableau for Further Analysis**
   - Connect your database to Tableau to analyze the data and build further visualizations.

5. **Perform Advanced Analytics**
   - Perform advanced analytics, such as:
     - **Building Hypotheses (H0)**
     - **Applying Coefficients**
     - **A/B Testing**
   - Use these methods to gain deeper insights into the dataset and validate assumptions.
