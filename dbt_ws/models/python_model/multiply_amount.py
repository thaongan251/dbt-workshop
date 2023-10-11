def multiply_n(x, n):
    return x * n

def model(dbt, session):
    dbt.config(
        materialized="table", 
        create_notebook=True
    )
    fact_orders = dbt.ref("fact_orders")

    df = fact_orders.withColumn("amount_multiply_10", multiply_n(fact_orders["amount"], 10))
    
    return df