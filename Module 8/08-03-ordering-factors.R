#### Ordered Factors ####

set.seed(123)
mons <- sample(month.name, 120, replace = TRUE)
month_factor <- factor(mons)

# levels are automatically ordered alphabetically
levels(month_factor)

# preserve the order that they show up in the data
month_factor_preserved <- factor(mons, levels = unique(mons))
levels(month_factor_preserved)

# Place them into chronological order
month.name # built in R vector that lists the names of the months in 
  #            chronological order
month_factor_chron <- factor(mons, levels = month.name)
levels(month_factor_chron)

# tell R that there is a specific order to the levels
r_knows_ordered <- factor(mons, levels = month.name, ordered = TRUE)
r_knows_ordered[1] > r_knows_ordered[3] 

# months with counts
table(r_knows_ordered)

# Reorder the levels based upon another variable
als_data <- read.csv('08-01-als-data.csv')
reorder(als_data$Subject.Group, als_data$Number.of.Visits, mean)
# in ascending order

# when graphing, sometimes it is useful to reverse the order of the labels
r_knows_reversed <- factor(mons, labels = rev(levels(r_knows_ordered)))
r_knows_reversed

# relevel to maintain the order of the other levels but move one to the front
releveled <- relevel(month_factor_chron, "December")
releveled

