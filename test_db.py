import psycopg2

conn = psycopg2.connect(
    host="127.0.0.1",
    port=5432,
    dbname="food_ai_db",
    user="food_ai",
    password="food_ai123",
    options="-c client_encoding=utf8"
)
conn.set_client_encoding("UTF8")

print("Connexion réussie")

conn.close()