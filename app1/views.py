import mysql.connector
from django.http import HttpResponse
from pandas.core.dtypes.inference import is_float
import mysql.connector
import logging
import random
import mysql.connector
from django.shortcuts import render
from django.core.files.storage import FileSystemStorage
from django.utils.text import get_valid_filename

logger = logging.getLogger(__name__)

def is_float(value):
    """Checks if a value is a valid float."""
    try:
        float(value)
        return True
    except ValueError:
        return False

def home(request):
    packages = []  # Default empty list in case no results

    if request.method == 'POST':
        try:
            # Establish database connection
            conn = mysql.connector.connect(
                host='localhost',
                user='root',
                password='',
                database='project'
            )
            cursor = conn.cursor(dictionary=True)

            # Get form data and ensure they are not empty or invalid
            num_days = request.POST.get('numDays', '').strip()
            num_places = request.POST.get('numPlaces', '').strip()
            vip_fare = request.POST.get('vipFare', '').strip()
            general_fare = request.POST.get('generalFare', '').strip()

            # Validate numeric inputs
            if num_days and not num_days.isdigit():
                return render(request, "return.html")
            if num_places and not num_places.isdigit():
                return render(request, "return.html")
            if vip_fare and not is_float(vip_fare):
                return render(request, "return.html")
            if general_fare and not is_float(general_fare):
                return render(request, "return.html")

            # Handle file upload securely
            if 'image' in request.FILES:
                image_file = request.FILES['image']
                fs = FileSystemStorage()
                filename = fs.save('static/images/' + get_valid_filename(image_file.name), image_file)
                uploaded_file_url = fs.url(filename)  # Get the file URL if needed

            # Base query
            query = """
                SELECT pcno, pcname, noofday, noofplace, description,
                vfare, gfare, breakfast, lunch, dinner, transport,
                tname, pimage
                FROM addpackage WHERE 1=1
            """
            params = []

            # Apply filters only if values are provided
            if num_days:
                query += " AND noofday = %s"
                params.append(int(num_days))

            if num_places:
                query += " AND noofplace = %s"
                params.append(int(num_places))

            if vip_fare:
                query += " AND CAST(vfare AS DECIMAL(10,2)) BETWEEN %s AND %s"
                vip_fare_value = float(vip_fare)
                params.append(vip_fare_value - 5000)  # Example range logic
                params.append(vip_fare_value + 5000)

            if general_fare:
                query += " AND CAST(gfare AS DECIMAL(10,2)) BETWEEN %s AND %s"
                general_fare_value = float(general_fare)
                params.append(general_fare_value - 5000)  # Example range logic
                params.append(general_fare_value + 5000)

            # Execute query
            cursor.execute(query, params)
            packages = cursor.fetchall()

            # Shuffle results randomly
            random.shuffle(packages)

            # If no matching results, fetch only random packages (no merging)
            if len(packages) == 0:
                cursor.execute("""
                    SELECT pcno, pcname, noofday, noofplace, description,
                    vfare, gfare, breakfast, lunch, dinner, transport,
                    tname, pimage
                    FROM addpackage 
                    ORDER BY RAND() 
                    LIMIT 3
                """)
                packages = cursor.fetchall()

        except mysql.connector.Error as err:
            logger.error(f"Database Error: {err}")
            packages = []  # Ensure packages is always a list
        except Exception as e:
            logger.error(f"Error: {e}")
            packages = []
        finally:
            # Ensure the database connection is closed
            if 'cursor' in locals():
                cursor.close()
            if 'conn' in locals():
                conn.close()

    return render(request, 'index.html', {'packages': packages})

def error(request):
    return render(request,'return.html')


def about(request):
    return render(request, 'about.html')

def offers(request):
    return render(request, 'offers.html')

def blog(request):
    return render(request, 'blog.html')

def contact(request):
    uname = request.POST.get('uname', '')
    email = request.POST.get('email', '')

    mydb=mysql.connector.connect(
        user="root",
        password="",
        host="localhost",
        database="project",
        charset="utf8"
    )
    mycur=mydb.cursor()
    mycur.execute("insert into usermast(uname,email) values('"+uname+"','"+email+"')")
    mydb.commit()
    return render(request, 'contact.html')


def register(request):
    if request.method == "POST":
        s1 = request.POST.get("uname", "")  # Use get() to avoid KeyError
        s2 = request.POST.get("upass", "")
        s3 = request.POST.get("uemail", "")
        s4 = request.POST.get("mobile", "")

        if not s1 or not s2 or not s3 or not s4:
            return HttpResponse("All fields are required!")

        mydb = mysql.connector.connect(
            user="root",
            password="",
            host="localhost",
            database="project",
            charset="utf8"
        )
        mycur = mydb.cursor()
        # sql = "INSERT INTO usermast (uname, upass, email, mobile) VALUES (%s, %s, %s, %s)"
        # values = (s1, s2, s3, s4)

        mycur.execute("INSERT INTO usermast( uname, upass, email, mobile) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')")
        mydb.commit()

        return render(request, "register.html", {"message": "Registration successful!"})

    return render(request, "register.html")

def signup(request):
    return render(request, "register.html")

def login(request):
    s1=request.POST["uemail"]
    s2=request.POST["upass"]
    mydb=mysql.connector.connect(
        user="root",
        password="",
        host="localhost",
        database="project",
        charset="utf8"
    )
    mycur=mydb.cursor()
    mycur.execute("select * from usermast where email= '"+s1+"' and upass='"+s2+"'")
    mydata=mycur.fetchone()
    if mydata is None:
        return HttpResponse("<h1><font color='red'>Invalid username & password")
    else:
        return render(request,"index.html")

def signin(request):
    return render(request, "login.html")