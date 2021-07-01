#### Converting factors to other data types ####

# to numeric
set.seed(123)
num_vector <- sample(1:10, 10, replace = TRUE)
num_vector
num_factor <- factor(num_vector)
num_factor

as.numeric(levels(num_factor))[num_factor]

# doesn't work
as.numeric(num_factor)

# to string
char_factor <- factor(month.name)
char_factor

as.character(char_factor)
# or
levels(char_factor)

# to date
date_factor <- factor(c("03/21/2021", "03/22/2021", "03/23/2021"))
as.Date(date_factor, format = "%m/%d/%Y")
