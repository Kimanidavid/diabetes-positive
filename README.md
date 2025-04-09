# Diabetes Prediction using Logistic Regression (PimaIndiansDiabetes2 Dataset)

This R program builds a logistic regression model to predict the likelihood of diabetes using the `PimaIndiansDiabetes2` dataset from the `mlbench` package. It utilizes various predictors such as glucose level, body mass index, number of pregnancies, and more.

## 📊 Dataset

- **Source**: `mlbench` package (PimaIndiansDiabetes2)
- **Description**: The dataset contains diagnostic measurements of women of Pima Indian heritage and whether they have diabetes.
- **Features**:
  - `pregnant`: Number of times pregnant
  - `glucose`: Plasma glucose concentration
  - `pressure`: Diastolic blood pressure
  - `triceps`: Triceps skinfold thickness
  - `insulin`: 2-Hour serum insulin
  - `mass`: Body mass index (BMI)
  - `pedigree`: Diabetes pedigree function
  - `age`: Age in years
  - `diabetes`: Outcome variable (positive/negative for diabetes)

## 🛠 Libraries Used

- `tidyverse`: Data wrangling and manipulation
- `caret`: Data splitting and model evaluation
- `mlbench`: Provides the dataset

## 🚀 Workflow

1. **Load & Clean Data**:
   - Remove missing values using `na.omit()`.

2. **Split Data**:
   - Split into training (80%) and testing (20%) sets.

3. **Model Building**:
   - Fit logistic regression models using different combinations of predictors.
   - Evaluate using the full model and simplified models with select variables.

4. **Prediction & Evaluation**:
   - Predict class probabilities and convert them into binary outcomes.
   - Calculate model accuracy.

## 📈 Performance

- **Final Model**: `diabetes ~ pregnant + glucose + pressure + mass + pedigree`
- **Prediction Accuracy**: **75.5%**
- **Model Type**: Logistic Regression (`binomial` family)
