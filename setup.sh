rm -f boe_spending.db
pip install sqlite-utils datasette
datasette install datasette-codespaces
sqlite-utils insert boe_spending.db vendors boe_spending.csv --csv
sqlite-utils transform boe_spending.db vendors --type Amount float
datasette serve boe_spending.db