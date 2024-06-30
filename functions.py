import mysql.connector as db
# from functions import create_db_connection,exe_query,read_query
from mysql.connector import Error
def create_db_connection(host_name,user_name,user_password,db_name):
    connection=None
    try:
        connection=db.connect(host=host_name,user=user_name,passwd=user_password,database=db_name)
        # print("MySql db connection successfull")
    except Error as err:
        print(f"Error:'{err}'")
    return connection
def exe_query(connection,query):
    cursor=connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        # print("query executed successfully!")
    except Error as err:
        print(f"Error: '{err}'")
def read_query(connection,query):
    cursor=connection.cursor()
    result=None
    try:
        cursor.execute(query)
        result=cursor.fetchall()
        return result
    except Error as err:
        print(f"Error: '{err}'")

# pw="googlemelty@2003"
# dbname="ezyshop"
# q1="select * from products"
# connection=create_db_connection("localhost","root",pw,dbname)
# results=read_query(connection,q1)
# for result in results:
#     print(result)
# uname=input()
# if uname==results[0][0]:
#     print("true")
# else:
#     print("false")


# num=int(results[0][0])
# num+=1
# print(num)