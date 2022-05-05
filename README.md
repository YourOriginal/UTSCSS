# Surfs Up - Climate database Analysis

Temperature, climates and accurate measurements are important factors when a business's product is directly influenced by those factors, thus, performing adequate analysis prior to selling such products is an important predictor to success. By using the temperature observations of Oahu over the years, we can determine if their surf and ice cream shop will be a sustainable product year-round. This can be done by using SQLalchemy and linking it to our jupyternotebook to allow manipulation of the database but with python.

## Analysis and Code

The overall code for the project is straight forward and relatively short. In jupyter we imported a host of sqlalchemy modules as the database is store in SQL but we are coding in python. We first created an engine as this provides a base connection and allows us to use SQL based functions, and then reflected the database into a model while also saving certain tables of interest (measurement and station tables) as variables.
