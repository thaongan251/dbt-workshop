# dbt-workshop

## Setup
- Make python virtual env by `python3 -m venv .env`
- Activate python virtual env `source .env/bin/activate`.
- Install dependencies python library by this command:  `python3 -m pip install -r requirements.txt`
- Run command: `dbt deps`
- Run command: `dbt seed`

## Usages
- **Folder structure**: https://docs.getdbt.com/guides/best-practices/how-we-structure/1-guide-overview
- **dbt commands**: https://docs.getdbt.com/reference/dbt-commands

## References
Workshop about dbt features
### 1. dbt show command 
- Use dbt show command to preview the result of dbt-SQL-definition on terminal. 
- *References*: 

    [1] About dbt show command: https://docs.getdbt.com/reference/commands/show

### 2. Metrics
- Metrics allows data analysts and engineers to define key business metrics directly within their data transformation layer.
- *References*: 

    [1] Metrics: https://docs.getdbt.com/docs/build/metrics

    [2] Creating Metrics: https://docs.getdbt.com/docs/build/metrics-overview
 
### 3. Exposures
- Exposures allow users to define downstream uses of a dbt project.
- *References*: 

    [1] Add Exposures to your DAG: https://docs.getdbt.com/docs/build/exposures 

### 4. Freshness
-   A freshness is used to define the acceptable amount of time between the most recent record, and now, for a table to be considered "fresh".
-   *References*:

    [1] freshness: https://docs.getdbt.com/reference/resource-properties/freshness 

    [2] Snapshotting source data freshness: https://docs.getdbt.com/docs/build/sources#snapshotting-source-data-freshness

### 5. Dbt Python model
-   dbt Python models can help you solve use cases that can't be solved with SQL.
-   *References*: 

    [1] Python models: https://docs.getdbt.com/docs/build/python-models

### 6. Incremental models
-   Incremental supports that only apply our transformations to rows of data with new or updated records
-   *References*:

    [1] Incremental models: https://docs.getdbt.com/docs/build/incremental-models

### 7. Further readings
- [1] Model governance (Model access, Model contracts, Model versions): https://docs.getdbt.com/docs/collaborate/govern/about-model-governance 
- [2] Incremental models in-depth: https://docs.getdbt.com/guides/best-practices/materializations/4-incremental-models
- [3] Understanding dbt Incremental Strategies:
    https://medium.com/indiciumtech/understanding-dbt-incremental-strategies-part-1-2-22bd97c7eeb5
    https://medium.com/indiciumtech/understanding-dbt-incremental-strategies-part-2-2-add59889ea17 
- [4] Upgrading to v1.5: https://docs.getdbt.com/guides/migration/versions/upgrading-to-v1.5
