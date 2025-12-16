import pandas as pd
import numpy as np
from datetime import datetime, timedelta

np.random.seed(42)

rows = 50
start_date = datetime(2023, 1, 1)

countries = ["India", "USA", "UK", "Canada", "Australia"]
segments = ["Consumer", "Corporate", "Home Office"]
categories = ["Furniture", "Technology", "Office Supplies"]
subcats = {
    "Furniture": ["Chairs", "Tables", "Bookcases"],
    "Technology": ["Laptops", "Mobiles", "Accessories"],
    "Office Supplies": ["Binders", "Paper", "Storage"]
}

data = []
for i in range(1, rows+1):
    cat = np.random.choice(categories)
    sub = np.random.choice(subcats[cat])
    date = start_date + timedelta(days=np.random.randint(0, 365))
    
    data.append({
        "OrderID": f"ORD-{1000+i}",
        "OrderDate": date.strftime("%Y-%m-%d"),
        "Country": np.random.choice(countries),
        "Segment": np.random.choice(segments),
        "Category": cat,
        "SubCategory": sub,
        "Sales": round(np.random.uniform(50, 2000), 2),
        "Quantity": np.random.randint(1, 10),
        "Profit": round(np.random.uniform(-200, 600), 2),
    })

df = pd.DataFrame(data)

file_path = "./sample_sales_50rows.csv"
df.to_csv(file_path, index=False)

file_path
