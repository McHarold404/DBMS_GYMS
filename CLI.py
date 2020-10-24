import subprocess as sp
import pymysql
import pymysql.cursors

def printTable(myDict, colList=None):
   """ Pretty print a list of dictionaries (myDict) as a dynamically sized table.
   If column names (colList) aren't specified, they will show in random order.
   Author: Thierry Husson - Use it as you want but don't blame me.
   """
   print()
   if not colList: colList = list(myDict[0].keys() if myDict else [])
   myList = [colList] # 1st row = header
   for item in myDict: myList.append([str(item[col] if item[col] is not None else '') for col in colList])
   colSize = [max(map(len,col)) for col in zip(*myList)]
   formatStr = ' | '.join(["{{:<{}}}".format(i) for i in colSize])
   myList.insert(1, ['-' * i for i in colSize]) # Seperating line
   for item in myList: print(formatStr.format(*item))
   print()

def retreival():
    print("1.Selection")
    print("2.Projection")
    print("3.Aggregate")
    print("4.Search")
    print("5.Analysis")
    print("6.Go Back")
    ch = int(input("Enter choice: "))

    if(ch == 1):
        selection()
    elif(ch == 2):
        projection()
    elif(ch == 3):
        aggregate()
    elif(ch == 4):
        search()
    elif(ch == 5):
        analysis()
    else:
        return

    return


def modification():

    print("1.Creation/Insertion")
    print("2.Update")
    print("3.Delete")
    print("4.Go Back")
    ch = int(input("Enter choice: "))

    if(ch == 1):
        creation()
    if(ch == 2):
        update()
    if(ch == 3):
        delete()
    else:
        return
    return


def selection():

    def selection_a():
        try:
            query = "SELECT * FROM Employee ;"
            cur.execute(query)
            rows = cur.fetchall()
            printTable(rows)
            con.commit()

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database -", e)
        return

    def selection_b():
        try:
            query = "SELECT * from member;"
            cur.execute(query)
            con.commit()
            rows = cur.fetchall()
            printTable(rows)

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database -", e)
        return

    print("1.Get complete list of employees")
    print("2.Get complete list of members")
    print("3.Return to main menu")
    ch = int(input("Enter choice: "))

    if(ch == 1):
        selection_a()
    elif(ch == 2):
        selection_b()
    else:
        return
    return


def projection():

    def projection_d():

        try:
            query = "SELECT * FROM diet_plan ORDER BY calory_cnt"
            cur.execute(query)

            rows = cur.fetchall();
            con.commit()
            printTable(rows)

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database -", e)
        return

    def projection_e():
        # sql query
        try:

            query = "SELECT fullName, member_id, bmi FROM member WHERE bmi > 25;"
            cur.execute(query) 
            con.commit()
            overweight = cur.fetchall()
            print("Overweight members: \n")
            printTable(overweight)

            query = "SELECT fullName, member_id, bmi FROM member WHERE bmi < 25 AND bmi >= 18.5;"
            cur.execute(query) 
            con.commit()
            healthy = cur.fetchall()
            print("Healthy members: \n")
            printTable(healthy)

            query = "SELECT fullName, member_id, bmi FROM member WHERE bmi < 18.5;"
            cur.execute(query) 
            con.commit()
            underweight = cur.fetchall()
            print("Underweight members: \n")
            printTable(underweight)

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database - ", e)
        return

    print("1.List diet plans sorted by their calory count")
    print("2.Classify members based on their BMI(underweight/overweight/fit).")
    print("3.Return to main menu")
    ch = int(input("Enter choice: "))
    if(ch == 1):
        projection_d()
    elif(ch == 2):
        projection_e()
    else:
        return
    return


def aggregate():

    def aggregate_f():
        # sql query
        try:
            query = "SELECT full_name as 'Trainer Name', trainer_id as 'Trainer ID', count(*) as 'Members under the Trainer' FROM Employee, member WHERE employee_id = trainer_id GROUP BY trainer_id ORDER BY count(*) DESC LIMIT 1;"
            cur.execute(query)
            con.commit()
            rows = cur.fetchall()
            printTable(rows)

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database - ", e)
        return

    def aggregate_g():
        try:
            query = "SELECT full_name as 'Trainer Name', trainer_id as 'Trainer ID', count(*) as 'Members under the Trainer' FROM Employee, member WHERE employee_id = trainer_id GROUP BY trainer_id ORDER BY count(*) ASC LIMIT 1;"

            cur.execute(query)
            con.commit()
            rows = cur.fetchall()
            printTable(rows)
            
        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database - ", e)
        return

    print("1.Retrieve trainer(s) with highest number of clients")
    print("2.Retrieve trainer(s) with lowest number of clients.")
    print("3.Return to main menu")
    num = int(input("Enter choice: "))
    if(num == 1):
        aggregate_f()
    elif(num == 2):
        aggregate_g()
    else:
        return
    return


def search():

    def search_h():
        # sql query
        try:
            exer = input("Enter exercise to be partially searched: ")
            equip = input("Enter equipment name to be partially searched: ")

            query = "SELECT * FROM `exercise` WHERE `name` LIKE '%%%s%%' OR `description` LIKE '%%%s%%'" % (exer, exer)
            cur.execute(query)
            rows1 = cur.fetchall()
            con.commit()

            query = "SELECT * FROM `equipment` WHERE `name` LIKE '%%%s%%'" % (equip)
            cur.execute(query)
            rows2 = cur.fetchall()
            con.commit()

            if len(rows1) > 0:
                printTable(rows1)
            if len(rows2) > 0:
                printTable(rows2)

            if(len(rows1) == 0 and len(rows2) == 0):
                print("No result found!\n")

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database:", e)
        return

    def search_i():
        # sql query
        idx = int(input("Enter diet plan index: "))
        food = input("Enter name of food item to be partially searched in this diet plan: ")
        try:
            data = {} 
            plans = ['breakfast', 'lunch', 'supper', 'dinner' ]
            for plan in plans:
                data[plan] = [] 
                query = "SELECT `%s` FROM `%s_plan` WHERE `diet_index` = '%d' AND `%s` LIKE '%%%s%%'" % (plan, plan, idx, plan, food)
                # print(query)
                cur.execute(query)
                rows = cur.fetchall()
                # print(rows)
                if(len(rows) == 0):
                    continue 

                for row in rows:
                    data[plan].append(row[plan])
                con.commit()

            print()
            exists = 0
            for plan in plans:
                if data[plan] == []:
                    continue 
                exists = 1 
                print(plan + ":")
                for x in data[plan]:
                    print(x)
                print()

            if(exists == 0):
                print("No result found!\n")

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database: ", e)
        return


    print("1.Partially search name of exercises and equipment.")
    print("2.A function to partially search for food items in diet plans.")
    print("3.Return to main menu")
    ch = int(input("Enter choice: "))
    if(ch == 1):
        search_h()
    elif(ch == 2):
        search_i()
    else:
        return
    return


def analysis():

    def analysis_j():
        try:
            query = "SELECT b_num as 'Branch Number', count(works_in) as 'Employees', avg(salary) as 'Average Salary'  FROM Employee, branch WHERE works_in = b_num GROUP BY b_num ;"
            # print(query)
            cur.execute(query)
            con.commit()
            rows = cur.fetchall()
            printTable(rows)
            query = "SELECT b_num as 'Branch Number', count(works_out) as 'Members', avg(fee) as 'Average Fees'  FROM member, branch WHERE works_out = b_num GROUP BY b_num ;"
            # print(query)
            cur.execute(query)
            con.commit()
            rows = cur.fetchall()
            # print(rows)
            printTable(rows)

            # query = "SELECT b_num as 'Branch Number', count(member_id) as 'Members', avg(fee) as 'Average Fees', count(employee_id) as 'Employees', avg(salary) as 'Average Salary' FROM ( (branch JOIN member ON b_num = works_out) JOIN Employee ON b_num = works_in) GROUP BY b_num ;"
            # # print(quer
            # cur.execute(query)
            # con.commit()
            # rows = cur.fetchall()
            # # print(rows)
            # printTable(rows)
        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database -", e)
        return


    def analysis_k():
        # sql query
        try:
            query = "SELECT full_name as 'Trainer Name', count(*) as 'Members under the trainer', avg(bmi) as 'Average BMI of members'  FROM Employee, member WHERE employee_id = trainer_id GROUP BY trainer_id ORDER BY count(*) DESC;"

            cur.execute(query)
            con.commit()
            rows = cur.fetchall()
            printTable(rows)

        except Exception as e:
            con.rollback()
            print("Error Occured: Unable to retreive from database - ", e)
        return


    print("1.Branch Report")
    print("2.Trainer Analysis")
    print("3.Return to main menu")
    ch = int(input("Enter choice: "))
    if(ch == 1):
        analysis_j()
    elif(ch == 2):
        analysis_k()
    else:
        return
    return

def creation():
    print("1.Add an employee")
    print("2.Add a new member")
    print("3.Add a new exercise")
    print("4.Insert gym equipments")
    print("5.Create a new branch")
    print("6.Record the body part a member is working on")
    print("7.Add a dependant")
    print("8.Insert a new diet plan")
    print("9.Return to main menu")

    ch = int(input("Enter choice: "))
    if (ch == 1):
        add_employee()
    elif(ch == 2):
        add_member()
    elif(ch == 3):
        add_exercise()
    elif(ch == 4):
        add_gym_equipment()
    elif(ch == 5):
        add_branch()
    elif(ch == 6):
        add_bodypart()
    elif(ch == 7):
        add_dependant()
    elif(ch == 8):
        add_dietplan()
    else:
        return
    return


def update():
    print("1.Change trainer of a member")
    print("2.Update Items in a Diet Plan")
    print("3.Update Contact Details")
    print("4.Return to main menu")

    ch = int(input("Enter choice: "))
    if(ch == 1):
        update_trainer()
    elif(ch == 2):
        update_dietplan()
    elif(ch == 6):
        update_reps()
    elif(ch == 3):
        update_contact()
    elif(ch == 4):
        return
    return


def delete():
    print("1.Delete member")
    print("2.Delete gym equipment which have been damaged or worn out")
    print("3.Delete employee")
    print("4.Return to main menu")
    ch = int(input("Enter choice: "))
    if(ch == 1):
        delete_member()
    elif(ch == 2):
        delete_equipment()
    elif(ch == 3):
        delete_employee()
    else:
        return
    return





def add_member():
    row = {}
    try:
        print("Enter New Member's details")
        row["member_id"] = int(input("Member ID: "))
        row["f_name"] = input("Fname: ")
        row["m_init"] = input("Minit: ")
        row["l_name"] = input("Lname: ")
        row["fee"] = float(input("Enter fee (at most 2 decimal places): "))
        row["height"] = float(input("Height in metres (less than 10 and with at most 2 decimal places): "))
        row["weight"] = float(input("Weight in KG (less than 1000 and with at most 2 decimal places): "))
        row["phone_number"] = input("Phone Number: ")
        row["email"] = input("Email: ")
        row["address"] = input("Address: ")
        row["works_out"] = int(input("Branch Number: "))
        row["trainer_start"] = input("Start Date (YYYY-MM-DD): ")
        row["trainer_id"] = input("Trainer id: ")
        row["bmi"]=row["weight"]/(row["height"]**2)
        
        query1="SELECT COUNT(*) as 'final_count',trainer_id from member WHERE trainer_id='%s'  GROUP BY trainer_id " % row["trainer_id"]
        cur.execute(query1)
        table=cur.fetchall()
        for r in table:
            trainer_limit=r['final_count']
        if trainer_limit>=20:
            print("Error: This trainer is already overloaded. Max members allowed under a trainer is 20. Please assign a new trainer ")
            return         

        query="INSERT INTO member(member_id,f_name,m_init,l_name,fee,height,weight,phone_number,email,address,works_out,trainer_start, trainer_id) VALUES('%s', '%s', '%s', '%s', '%f', '%f', '%f', '%s','%s','%s','%d','%s','%s')" % (
            row["member_id"], row["f_name"], row["m_init"], row["l_name"], row["fee"], row["height"], row["weight"], row["phone_number"], row["email"],row["address"],row["works_out"],row["trainer_start"],row["trainer_id"])
        
        cur.execute(query)
        con.commit()
        print("Successfully inserted into database")
        
    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)
    return


def add_employee():
    row={}
    try:
        print("Enter New Employee's details: ")
        row["employee_id"]=input("Employee ID: ")
        row["full_name"] = input("Full Name: ")
        row["salary"] = float(input("Enter salary (at most 2 decimal places): "))
        row["dob"] = input("Date of Birth (YYYY-MM-DD): ")
        row["phone_number"] = input("Phone Number: ")
        row["address"] = input("Address: ")
        row["email"] = input("Email: ")
        row["works_in"] = int(input("Branch Number: "))


        #sql query
        query="INSERT into Employee(employee_id,full_name,salary,dob,phone_number,address,email,works_in) VALUES('%s','%s','%f','%s','%s','%s','%s','%d')" % (row["employee_id"],row["full_name"],row["salary"],row["dob"],row["phone_number"],row["address"],row["email"],row["works_in"])
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully inserted into database\n")

        
    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)

    return


def add_exercise():
    row={}
    try:
        print("Add New Exercise")
        row["name"]=input("Name: ")
        row["description"]=input("Description: ")
        row["equip_code"]=input("Equipment Code: ")

        #sql query
        query="INSERT into exercise(name,description,equip_code) VALUES ('%s','%s','%s')" % (row["name"],row["description"],row["equip_code"]) 
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully inserted into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)

    return


def add_gym_equipment():
    try:
        row={}
        row["barcode"]=input("Barcode: ")
        row["name"]=input("Name: ")
        
        #sql query
        query="INSERT into equipment(barcode,name) VALUES ('%s','%s')" % (row["barcode"],row["name"])
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully inserted into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)

    return 



def add_branch():
    try:
        row={}
        row["b_num"]=int(input("Branch Number: "))
        row["street"]=input("Street: ")
        row["building"]=input("Building: ")
        row["city"]=input("City: ")
        row["state"]=input("State: ")
        row["country"]=input("Country: ")
        row["locality"]=input("Locality: ")

        #sql query
        query="INSERT into branch(b_num,street,building,city,state,country,locality) VALUES ('%d','%s','%s','%s','%s','%s','%s')" % (row["b_num"],row["street"],row["building"],row["city"],row["state"],row["country"],row["locality"])
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully inserted into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)
    
    return         


def add_bodypart():
    try:
        row={}
        row["name"]=input("Name: ")
        row["member_id"]=input("Member ID: ")

        query="INSERT into body_part(name,member_id) VALUES ('%s','%s')" % (row["name"],row["member_id"])
        #sql query
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully inserted into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)
    
    return            


def add_dependant():
    try:
        row={}
        row["name"]=input("Name: ")
        row["relationship"]=input("Relationship: ")
        row["emp_id"]=input("Employee's ID: ")

        #sql query
        query="INSERT into dependent(name,relationship,emp_id) VALUES ('%s','%s','%s')" % (row["name"],row["relationship"],row["emp_id"])
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully inserted into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)
    
    return            

def add_dietplan():
    try:
        row={}
        row["index"]=int(input("Diet Plan Index: "))
        row["calory_cnt"]=int(input("Calory Count : "))
        row["breakfast"]=input("Breakfast: ")
        row["lunch"]=input("Lunch: ")
        row["dinner"]=input("Dinner: ")
        row["supper"]=input("Supper: ")

        #sql query
        query1="INSERT into `diet_plan` (`index`, `calory_cnt`) VALUES ('%d','%d')" % (row["index"],row["calory_cnt"])
        cur.execute(query1)
        #con.commi t()
        query2="INSERT into `supper_plan` (diet_index,supper) VALUES ('%d','%s')" % (row["index"],row["supper"])
        cur.execute(query2)
        #con.commit()
        query3="INSERT into `lunch_plan` (diet_index,lunch) VALUES ('%d','%s')" % (row["index"],row["lunch"])
        cur.execute(query3)
        #con.commit()
        query4="INSERT into `dinner_plan` (diet_index,dinner) VALUES ('%d','%s')" % (row["index"],row["dinner"])
        cur.execute(query4)
        #con.commit()
        query5="INSERT into `breakfast_plan` (diet_index,breakfast) VALUES ('%d','%s')" % (row["index"],row["breakfast"])
        cur.execute(query5)
        #con.commit()
        # print(query1,query2,query3,query4,query5)
        #cur.execute(query1)
        #cur.execute(query2)
        
        #cur.execute(query3)
        
        #cur.execute(query4)
        #cur.execute(query5)

        con.commit()
        print("Successfully inserted into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database:", e)
     
    return            



def delete_member():
    try:
        #sql query
        mid=input("Member ID whose info is to be deleted: ")
        query="DELETE FROM member WHERE member_id='%s'" % mid
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully deleted from Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to delete from database:", e)
    
    return            

def delete_equipment():
    try:
        #sql query
        bcode=input("Enter Barcode: ")
        query="DELETE FROM equipment WHERE barcode= '%s'" % bcode
        print(query)
        cur.execute(query)
        con.commit()
        print("Successfully deleted from Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to delete from database:", e)
    
    return            

def delete_employee():
    try:
        #sql query
        emp=input("Enter Employee id: ")
        query="DELETE from Employee WHERE employee_id= '%s'" % emp
        print(query)
        cur.execute(query)
        con.commit()
        print("Successfully deleted from Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to delete from database:", e)
    
    return            


def update_dietplan():
    idx = int(input("Enter diet plan index: "))
    try:
        row = {}
        #sql query
        choice = input("modify calory_cnt: (y/n) ")
        if choice == 'y':
            row["calory_cnt"] = int(input("Enter Calory Count: "))
            query="UPDATE `diet_plan` SET `calory_cnt` = '%d' WHERE `index` = '%d'" % (row["calory_cnt"],idx)
            # print(query)
            cur.execute(query)
            con.commit()
            print("Successfully updated details into Database\n")

        choice = input("modify breakfast: (y/n) ")
        if choice == 'y':
            row["breakfast"] = input("Enter Breakfast: ")
            query="UPDATE `breakfast_plan` SET `breakfast` = '%s' WHERE `diet_index` = '%d'" % (row["breakfast"],idx)
            cur.execute(query)
            con.commit()
            print("Successfully updated details into Database\n")

        choice = input("modify lunch: (y/n) ")
        if choice == 'y':
            row["lunch"] = input("Enter Lunch: ")
            query="UPDATE `lunch_plan` SET `lunch` = '%s' WHERE `diet_index` = '%d'" % (row["lunch"],idx)
            cur.execute(query)
            con.commit()
            print("Successfully updated details into Database\n")

        choice = input("modify dinner: (y/n) ")
        if choice == 'y':
            row["dinner"] = input("Enter Dinner: ")     
            query="UPDATE `dinner_plan` SET `dinner` = '%s' WHERE `diet_index` = '%d'" % (row["dinner"],idx)
            cur.execute(query)
            con.commit()
            print("Successfully updated details into Database\n")

        choice = input("modify supper: (y/n) ")
        if choice == 'y':
            row["supper"] = input("Enter Supper: ") 
            query="UPDATE `supper_plan` SET `supper` = '%s' WHERE `diet_index` = '%d'" % (row["supper"],idx)
            cur.execute(query)
            con.commit()
            print("Successfully updated details into Database\n")


    except Exception as e:
        con.rollback()
        print("Failed to updated details into database:", e)

    return       


def update_reps():
    ex_name = input("Enter exercise: ")
    try:
        row = {}
        row["reps"] = int(input("Enter reps: "))
        query="UPDATE `exer_reps` SET `reps` = '%d' where `name` = '%s'" % (row["reps"],ex_name)
        # print(query)
        cur.execute(query)
        con.commit()
        print("Successfully updated details into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to updated details into database:", e)



def update_trainer():
    mid=input("Enter member id: ")
    row={}
    try:
        choice=input("Do you want to modify trainer details of a member?(y/n) ")
        if(choice=='y'):
            row["trainer_id"]=input("Input new trainer's ID: ")
            row["trainer_start"]=input("Input trainer's start date (YYYY-MM-DD): ")
            query1="SELECT COUNT(*) as 'final_count',trainer_id from member WHERE trainer_id='%s'  GROUP BY trainer_id " % row["trainer_id"]
            cur.execute(query1)
            table=cur.fetchall()
            for r in table:
                trainer_limit=r['final_count']
            if trainer_limit>=20:
                print("Error: This trainer is already overloaded:(")
                return              

            query="UPDATE member SET trainer_id='%s' WHERE member_id='%s' " % (row["trainer_id"],mid)
            cur.execute(query)
            con.commit()
            query="UPDATE member SET trainer_start='%s' WHERE member_id='%s' " % (row["trainer_start"],mid)
            cur.execute(query)
            con.commit()
            print("Successfully updated details into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to updated details into database:", e)

    return      


def update_contact():
    idx=input("Do you want to update contact details of employee or member? (employee/member) ")
    row={}
    try:
        if(idx=='employee'):
            empid=input("Enter Employee's ID: ")
            choice=input("Do you want to modify phone number details of an employee?(y/n) ")
            if(choice=='y'):
                row["phone_number"]=input("Enter phone number: ")
                query="UPDATE `Employee` SET `phone_number` = '%s' WHERE `employee_id` = '%s'" % (row["phone_number"],empid)
                cur.execute(query)
                con.commit()
                print("Successfully updated details into Database\n")

            choice=input("Do you want to modify email ID of an employee?(y/n) ")
            if(choice=='y'):
                row["email"]=input("Enter Email ID: ")
                query="UPDATE `Employee` SET `email` = '%s' WHERE `employee_id` = '%s'" % (row["email"],empid)
                cur.execute(query)
                con.commit()
                print("Successfully updated details into Database\n")

        if(idx=='member'):
            mid=input("Enter Member's ID: ")
            choice=input("Do you want to modify phone number details of an member?(y/n) ")
            if(choice=='y'):
                row["phone_number"]=input("Enter phone number: ")
                query="UPDATE `member` SET `phone_number` = '%s' WHERE `member_id` = '%s'" % (row["phone_number"],mid)
                cur.execute(query)
                con.commit()
                print("Successfully updated details into Database\n")

            choice=input("Do you want to modify email ID of an member?(y/n) ")
            if(choice=='y'):
                row["email"]=input("Enter Email ID: ")
                query="UPDATE `member` SET `email` = '%s' WHERE `member_id` = '%s'" % (row["email"],mid)
                cur.execute(query)
                con.commit()    
                print("Successfully updated details into Database\n")

    except Exception as e:
        con.rollback()
        print("Failed to updated details into database:", e)

    return    

def displayTable():
    table = input("Enter table name: ")
    query = "SELECT * from %s ;" % (table)
    cur.execute(query)
    rows = cur.fetchall()
    printTable(rows)

def dispatch(ch):
    """
    Function that maps helper functions to option entered
    """
    # print("Entered: ", ch)
    if(ch == 1):
        retreival()
    elif(ch == 2):
        modification()
    elif(ch == 4):
        displayTable()
    else:
        print("Error: Invalid Option")


# Global
while(1):
    # tmp=sp.call('clear', shell=True)

    # Can be skipped if you want to hard core username and password
    username=input("Username: ")
    password=input("Password: ")

    try:
        # Set db name accordingly which have been create by you
        # Set host to the server's address if you don't want to use local SQL server
        con=pymysql.connect(host='localhost',
                              user=username,
                              password=password,
                              db='GYM',
                              cursorclass=pymysql.cursors.DictCursor)
        tmp=sp.call('clear', shell=True)

        if(con.open):
            print("Connected with the database.")
        else:
            print("Failed to connect.")

        tmp=input("Enter any key to CONTINUE>")

        with con.cursor() as cur:
            while(1):
                tmp=sp.call('clear', shell=True)
                print("Welcome to the GYM! Press one of the following number for their respective function")
                # Here taking example of Employee Mini-world
                print("1.Retrieval")  # Hire an Employee
                print("2.Modification")  # Fire an Employee
                print("3.Logout")
                print("4.Show table")
                ch=int(input("Enter choice> "))
                tmp=sp.call('clear', shell=True)
                if ch == 3:
                    exit()
                else:
                    dispatch(ch)
                    tmp=input("Enter any key to CONTINUE> ")

    except Exception as  e:
        tmp=sp.call('clear', shell=True)
        print(e)
        print("Connection Refused: Either username or password is incorrect or user doesn't have access to database")
        tmp=input("Enter any key to CONTINUE>")
