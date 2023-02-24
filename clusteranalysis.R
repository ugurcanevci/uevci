library(dplyr)
library(tidyr)
library(data.table)
library(tidyverse)
library(ggplot2)

# Extract the HDP row
hdp_row <- hdpstart["5", ]
hdp_row <- data.frame(as.numeric(hdp_row))
hdp_row <- slice(hdp_row, -1)

# Scale the HDP row
hdp_row_scaled <- (hdp_row - min(hdp_row)) / (max(hdp_row) - min(hdp_row))

# Perform k-means clustering with k=3
kmeans_cluster <- kmeans(hdp_row_scaled, centers=3)

# Print the cluster assignment for each column
print(kmeans_cluster$cluster)

# Get the cluster centers
cluster_centers <- kmeans_cluster$centers

# Print the cluster centers
print(cluster_centers)


# Convert the cluster assignments to a factor for plotting purposes
cluster_assignment <- as.factor(kmeans_cluster$cluster)

# Create a data frame with the cluster assignments and the HDP row values
df <- data.frame(cluster_assignment, hdp_row_scaled)

# Extract x and y values for each cluster
x_cluster1 <- unlist(df[cluster_assignment == 1, "x"])
y_cluster1 <- unlist(df[cluster_assignment == 1, "y"])
x_cluster2 <- unlist(df[cluster_assignment == 2, "x"])
y_cluster2 <- unlist(df[cluster_assignment == 2, "y"])
x_cluster3 <- unlist(df[cluster_assignment == 3, "x"])
y_cluster3 <- unlist(df[cluster_assignment == 3, "y"])

# Create a scatter plot of the data with color-coded clusters
plot(df, col = cluster_assignment)

# Add cluster centers to the plot
points(kmeans_cluster$centers, col = 4:6, pch = 8, cex = 2)




# Convert the data to a data frame and add the cluster assignment as a column
df <- as.data.frame(df)
df$cluster_assignment <- as.factor(cluster_assignment)

ggplot(df, aes(x = as.numeric.hdp_row., y = cluster_assignment, color = cluster_assignment)) +
  geom_point(size = 3) +
  labs(title = "K-Means Clustering", x = "HDP", y = "Cluster") +
  theme_minimal() +
  scale_x_continuous(limits = c(0, 1))


