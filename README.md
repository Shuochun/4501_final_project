# 4501_final_project
## Description
In this project, we have utilized several datasets, including NYC Open Data and Zillow's historical rent averages, to analyze the factors contributing to a desirable living area in New York City. We focused on identifying quiet neighbourhoods with abundant greenery that align with various budget constraints.
Below is a brief outline of the steps that we followed:
    Data Preprocessing: We began by downloading and cleaning the data, ensuring it was relevant and reliable. This involved removing unnecessary columns, filtering invalid data points, normalizing column names and types, and standardizing Spatial Reference Identifiers (SRIDs).

    Data Storage: We stored our processed data in a PostgreSQL database, utilizing the PostGIS extension to handle geographic data. Our database includes tables for NYC zip codes, 311 complaints, tree census, and average rents.

    Data Understanding: Through crafted SQL queries, we gained insights into calm areas to live, neighborhoods with the most greenery, and correlations between rent, trees, and 311 complaints.

    Data Visualization: We created several visualizations using matplotlib and other libraries. These included analyses of complaint types, rent-tree-complaint correlations, and geospatial plots of 311 incidents and tree data.

## Group Name
Project Group 5

## Team members
UNIs:[sh4463,zy2620]