#loading pachages
library(tidyverse)
library(caret)
theme_set(theme_classic())

#loading the data
data('PimaIndiansDiabetes2', package='mlbench')
head(PimaIndiansDiabetes2)

# Load the data and remove NAs
PimaIndiansDiabetes2 <- na.omit(PimaIndiansDiabetes2)

# Inspect the data
sample_n(PimaIndiansDiabetes2, 3)

# Split the data into training and test set
set.seed(123)
training.samples <- PimaIndiansDiabetes2$diabetes %>% 
  createDataPartition(p = 0.8, list = FALSE)
train.data  <- PimaIndiansDiabetes2[training.samples, ]
test.data <- PimaIndiansDiabetes2[-training.samples, ]

# Fit the model
model <- glm( diabetes ~., data = train.data, family = binomial)

# Summarize the model
summary(model)
# Make predictions
probabilities <- model %>% predict(test.data, type = "response")
predicted.classes <- ifelse(probabilities > 0.5, "pos", "neg")
# Model accuracy
mean(predicted.classes == test.data$diabetes)

# predicting the probability
model <- glm( diabetes ~ glucose, data = train.data, family = binomial)
summary(model)$coef

# performing multiple logistic regression
model <- glm( diabetes ~ glucose + mass + pregnant, 
                data = train.data, family = binomial)
summary(model)$coef

# predicting class membership probabilities
model <- glm( diabetes ~ pregnant + glucose + pressure + mass + pedigree, data = train.data, family = binomial)
probabilities <- model %>% predict(test.data, type = "response")
head(probabilities)
