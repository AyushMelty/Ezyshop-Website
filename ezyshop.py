from flask import Flask,  redirect, url_for, render_template, request, session, flash
import mysql.connector as db
from functions import create_db_connection,exe_query,read_query
from mysql.connector import Error
from datetime import timedelta, datetime
from random import randint

app = Flask(__name__)
app.permanent_session_lifetime = timedelta(days = 1)
app.secret_key = "khidmatDB"
pw="googlemelty@2003"
dbname="ezyshop"
connection=create_db_connection("localhost","root",pw,dbname)

@app.route("/", methods= ["POST", "GET"])
def login():
    if(request.method == "GET"):
        return render_template("login.html")
    else:
        # print(request.form)
        uname = request.form["username"]
        password = request.form["password"]
        typeOf = request.form["typeOf"] 
        action = request.form.get('action')
        # q=""
        if action == "login":
            if(typeOf == "Customer"):
                q=f"select Username from login where Username='{uname}';"
                result=read_query(connection,q)
                if (len(result)!=0):
                    q1=f"select Password from customer where ref_name='{uname}';"
                    results=read_query(connection,q1)
                    if len(results)>0:
                        if results[0][0]==password:
                            session.permanent = True
                            session["user"] = result[0][0]
                            temp=session["user"]
                            print(temp[0])
                            return redirect(url_for("customer"))
                return  redirect(url_for("login"))
                    
            elif(typeOf=="Vendor"):
                q=f"select Username from login where Username='{uname}';"
                result=read_query(connection,q)
                if (len(result)!=0):
                    q1=f"select Password from vendor where ref_username='{uname}';"
                    results=read_query(connection,q1)
                    if len(results)>0:
                        if results[0][0]==password:
                            session.permanent = True
                            session["user"] = result[0][0]
                            temp=session["user"]
                            print(temp)
                            # print()
                            return redirect(url_for("vendor"))
                return  redirect(url_for("login"))
                    
            elif(typeOf=="Admin"):
                q=f"select Username from login where Username='{uname}';"
                result=read_query(connection,q)
                if (len(result)!=0):
                    q1=f"select Password from admin where admin_username='{uname}';"
                    results=read_query(connection,q1)
                    if len(results)>0:
                        if results[0][0]==password:
                            session.permanent = True
                            session["user"] = result[0][0]
                            # print()
                            return redirect(url_for("admin"))
                return  redirect(url_for("login"))
            else:
                return redirect(url_for("login"))
        else:
            if typeOf == "Customer":
                return redirect(url_for("signupcustomer"))
            elif typeOf == "Vendor":
                return redirect(url_for("signupvendor"))
            elif typeOf == "Admin":
                return redirect(url_for("signupadmin"))
            else:
                return redirect(url_for("login"))

@app.route("/signupvendor",methods=["POST","GET"])
def signupvendor():
    if request.method=="GET":
        return render_template("signupvendor.html")
    else:
        return redirect(url_for("login"))

@app.route("/vendor",methods=["POST","GET"])
def vendor():
    if "user" in session:
        uname=session["user"]
        q=f"select idvendor from vendor where ref_username='{uname}'"
        reusult2=read_query(connection,q)
        vendid=int(reusult2[0][0])
        q=f"select idProducts,ProductName,Stock,Price,Discount,Category from products where ref_userid={vendid}"
        reusult2=read_query(connection,q)
        return render_template("vendor.html",x=reusult2,name=uname)
    else:
        return redirect(url_for("login"))
    


@app.route("/admin", methods= ["POST", "GET"])
def admin():
    if "user" in session:
        uname=session["user"]
        q1=f"Select idAdmin from admin where admin_username='{uname}';"
        reusult2=read_query(connection,q1)
        adm_id=int(reusult2[0][0])
        q1=f"select idvendor,vendorname,venphno,Address from vendor where ref_adminid={adm_id}"
        results=read_query(connection,q1)
        return render_template("admin.html",x=results,name=session["user"])
    else:
        return redirect(url_for("login"))

@app.route("/vendor/add_product",methods=["POST","GET"])
def addproduct():
    if "user" in session:
        if request.method== "GET":
            return render_template("vendoraddproduct.html")
        else:
            uname=session["user"]
            q2=f"select idvendor from vendor where ref_username='{uname}'"
            results=read_query(connection,q2)
            idd=int(results[0][0])
            q1="select max(idProducts) from products"
            results=read_query(connection,q1)
            # print(type(results))
            num=int(results[0][0])
            num+=1
            name=request.form.get('name')
            stock=request.form.get('stock')
            price=request.form.get('price')
            discount=request.form.get('discount')
            category=request.form.get('category')
            q1=f"insert into products values({num},'{name}',{stock},{price},{discount},'{category}',{idd})"
            exe_query(connection,q1)
            return redirect(url_for("addproduct"))
    else:
        return redirect(url_for("login"))
@app.route("/admin/add_vendor",methods=["POST","GET"])
def addvendor():
    if "user" in session:
        if request.method == "GET":
            return render_template("adminaddvendor.html")
        else:
            uname=session["user"]
            q1=f"Select idAdmin from admin where admin_username='{uname}';"
            reusult2=read_query(connection,q1)
            id=int(reusult2[0][0])
            name=request.form.get('name')
            phno=request.form.get('phno')
            address=request.form.get('address')
            username=request.form.get('username')
            password=request.form.get('password')
            q1="select max(idvendor) from vendor"
            results=read_query(connection,q1)
            num=int(results[0][0])
            num+=1
            q1=f"insert into login values(2,'{username}','{password}')"
            if check(username)==True:
                flash('Username already exists. Please choose another username.', 'warning')
                return redirect(url_for('addvendor'))
            
            exe_query(connection,q1)
            q1=f"insert into vendor values({num},'{name}','{phno}','{address}','{username}',{id},'{password}')"
            # q1=f"INSERT INTO `ezyshop`.`vendor` (`idvendor`, `vendorname`, `venphno`, `Address`, `ref_username`, `ref_adminid`, `Password`) VALUES ('{num}', '{name}', '{phno}', '{addr}', '{uname}', '101', '{p}');"
            
            exe_query(connection,q1)
            return redirect(url_for("addvendor"))

    else:
        return redirect(url_for("login"))

@app.route("/admin/reject_vendor",methods=["POST","GET"])
def reject_vendor():
    vendor_id = request.form['vendor_id']
    q2=f"Delete from vendor where idvendor={vendor_id}"
    exe_query(connection,q2)
    return redirect(url_for("admin"))

@app.route("/vendor/del_product",methods=["POST","GET"])
def del_product():
    a=request.form['product_id']
    q2=f"Delete from products where idProducts={a}"
    exe_query(connection,q2)
    return redirect(url_for("vendor"))

def check(uname):
    q1=f"select Username from login where Username='{uname}'"
    connection=create_db_connection("localhost","root",pw,dbname)
    results=read_query(connection,q1)
    if len(results)!=0:
        return True
    else:
        return False

@app.route("/signupadmin", methods= ["POST", "GET"])
def signupadmin():
    if request.method == "GET":
        return render_template("signupadmin.html")
    else:
        username=request.form.get('username')
        name=request.form.get('name')
        p=request.form.get('password')
        q1="select max(idAdmin) from admin"
        results=read_query(connection,q1)
        # print(type(results))
        num=int(results[0][0])
        num+=1
        if check(username)==True:
            flash('The username already exists. Please choose another one.', 'warning')
            return redirect(url_for('signupadmin'))
        q1=f"insert into login values(1,'{username}','{p}');"
        exe_query(connection,q1)
        q1=f"insert into admin values({num},'{name}','{p}','{username}');"
        exe_query(connection,q1)
        session.permanent = True
        session["user"] = username
        return redirect(url_for("admin"))
    

@app.route("/signupcustomer", methods= ["POST", "GET"])
def signupcustomer():
    if request.method == "GET":
        return render_template("signupcustomer.html")
    else:
        uname = request.form.get('username')
        password = request.form.get('password')
        fname = request.form.get('fname')
        lname = request.form.get('lname')
        street_no=request.form.get('street_no')
        city=request.form.get('city')
        state=request.form.get('state')
        pincode=request.form.get('pincode')
        dob=request.form.get('dob')
        if check(uname)==True:
            flash('The username already exists. Please choose another one.', 'warning')
            return redirect(url_for('signupcustomer'))
        q1="select max(idcustomer) from customer"
        results=read_query(connection,q1)
        num=int(results[0][0])
        num+=1
        q1=f"insert into login values(3,'{uname}','{password}')"
        exe_query(connection,q1)
        q1=f"insert into customer values({num},'{fname}','{lname}','{street_no}','{city}','{state}','{pincode}','{dob}','{password}','{uname}',0)"
        exe_query(connection,q1)
        session.permanent = True
        session["user"] = uname
        
        return redirect(url_for("customer"))
  

        

@app.route('/update_quantity/<int:product_id>', methods=['POST'])
def update_quantity(product_id):
    quantity = (request.form.get('quantity'))
    if not quantity or quantity == "0":
        print("Quantity not entered")
        error = "Please enter a valid quantity."
        myresult=read_query(connection,"select idProducts,ProductName,Stock,Price,Discount,Category from products")
        return render_template("customer.html",error=error ,x = myresult,name=session["user"])
    print(type(quantity))
    print(quantity)
    quantity = int(quantity)
    pr_id= product_id
    temp=session["user"]
    q1=f"Select idcustomer from customer where ref_name='{temp}'"
    qry=f"Select Stock from products where idProducts={pr_id}"
    # connection=create_db_connection("localhost","root",pw,dbname)
    rts=read_query(connection,qry)
    total=int(rts[0][0])

    if quantity>total:
        print("Given quantity is greater than stock!!!")
        return redirect(url_for('customer'))

    reusult2=read_query(connection,q1)
    num2=int(reusult2[0][0])

    q6=f"Select idcart from cart where id={num2}"
    # connection=create_db_connection("localhost","root",pw,dbname)
    result4=read_query(connection,q6)
    num3=int(result4[0][0])#cart id
    
    q4=f"Select max(relation_id) from cartwithproducts;"
    # connection=create_db_connection("localhost","root",pw,dbname)

    result3=read_query(connection,q4)
    num1=int(result3[0][0])
    num1+=1

    q5=f"Insert into cartwithproducts values({num3},{pr_id},{quantity},{num1})"
    # connection=create_db_connection("localhost","root",pw,dbname)

    exe_query(connection,q5)

    return redirect(url_for('customer'))  # Redirect back to the customer page or appropriate page


@app.route("/customer", methods= ["POST", "GET"])
def customer():
    if "user" in session:
        myresult=read_query(connection,"select idProducts,ProductName,Stock,Price,Discount,Category from products")
        

        return render_template("customer.html", x = myresult,name=session["user"])
    else:
        return redirect(url_for("login"))

@app.route("/customer/cart", methods= ["POST", "GET"])
def cart():
    uname=session["user"]
    q1=f"Select idcustomer from customer where ref_name='{uname}';"
    # connection=create_db_connection("localhost","root",pw,dbname)
    results=read_query(connection,q1)
    # print(results)
    custid=int(results[0][0])
    q6=f"Select idcart from cart where id={custid}"
    results_=read_query(connection,q6)
    cartid=int(results_[0][0])#cart id
    updatecartamt(cartid)
    q=f"Select distinct(p.ProductName),cwp.quantity,p.idProducts from cartwithproducts as cwp inner join products as p on cwp.prodref_id=p.idProducts where cwp.cartref_id={cartid} and cwp.quantity>0"
    # print("(Product Name,Amount)")
    results=read_query(connection,q)
    if(results is None):
        myresult=read_query(connection,"select idProducts,ProductName,Stock,Price,Discount,Category from products")
        return render_template("customer.html" ,x = myresult,name=session["user"]) 
    q=f"select amount from cart where idcart={cartid}"
    # connection=create_db_connection("localhost","root",pw,dbname)
    res=results
    results=read_query(connection,q)
    amount=int(results[0][0])
    return render_template("cart.html",x=res,amount=amount)

def updatecartamt(cartid):
    q=f"Select distinct(p.ProductName),cwp.quantity,p.Price,p.Discount from cartwithproducts as cwp inner join products as p on cwp.prodref_id=p.idProducts where cwp.cartref_id={cartid} and cwp.quantity>0"
    # connection=create_db_connection("localhost","root",pw,dbname)
    results=read_query(connection,q)
    ans=0
    q=f"update cart set amount=0 where idcart={cartid}"
    # if(results in None):
    #     return 
    for result in results:
        a=(int(result[1])*int(result[2]))
        b=(a*int(result[3])) /100
        a=a-b
        ans+=a
    q=f"update cart set amount={ans} where idcart={cartid}"
    # connection=create_db_connection("localhost","root",pw,dbname)
    exe_query(connection,q)
    return ans

@app.route("/customer/checkout", methods= ["POST", "GET"])
def checkout():
    uname=session["user"]
    q1=f"Select idcustomer from customer where ref_name='{uname}';"
    # connection=create_db_connection("localhost","root",pw,dbname)
    results=read_query(connection,q1)
    custid=int(results[0][0])
    q6=f"Select idcart from cart where id={custid}"
    results1=read_query(connection,q6)
    cartid=int(results1[0][0])#cart id
    amount=updatecartamt(cartid)
    if request.method == "GET":
        return render_template("checkout.html",amount=amount)
    else:
        q2="select max(orderid) from orders"
        # connection=create_db_connection("localhost","root",pw,dbname)
        results2=read_query(connection,q2)

        num=int(results2[0][0])
        num+=1
        payment = request.form.get('paymentMethod')
        rating = request.form.get('rating')
        if not payment or not rating or amount==0:
            if(amount==0):
                flash('*Please add some items to the cart.', 'error')
            else:

                flash('*Please select a payment method and rating.', 'error')
            return redirect(url_for('checkout'))
        q=f"insert into orders values ({num},'{payment}',{amount},{custid})"
        # connection=create_db_connection("localhost","root",pw,dbname)
        exe_query(connection,q)
        q2="select max(deliveryid) from delivery"
        # connection=create_db_connection("localhost","root",pw,dbname)
        results2=read_query(connection,q2)

        prdel=int(results2[0][0])
        prdel+=1
        q=f"insert into delivery values ({prdel},0,{custid})"
        # connection=create_db_connection("localhost","root",pw,dbname)
        exe_query(connection,q)
        q=f"delete from cartwithproducts where cartref_id={cartid}"
        exe_query(connection,q)
        updatecartamt(cartid)
        q1=f"Insert into feedback values({custid},{rating})"
        exe_query(connection,q1)
        return redirect(url_for("thankyou"))
        
@app.route("/customer/checkout/thankyou")
def thankyou():
    return render_template("thankyou.html")

@app.route("/customer/orders", methods= ["POST", "GET"])
def orders():
    uname=session["user"]
    q1=f"Select idcustomer from customer where ref_name='{uname}';"
    # connection=create_db_connection("localhost","root",pw,dbname)
    results=read_query(connection,q1)
    custid=int(results[0][0])
    q=f"Select orderid,payment,amount from orders where custid={custid}"
    results=read_query(connection,q)
    return render_template("orders.html",x=results)

@app.route("/logout")
def logout():
    session.pop("user", None)
    return redirect(url_for("login"))

if __name__ == "__main__":
    app.run(debug=True)
