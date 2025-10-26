Cocktail Approach for Travel Recommendation System
📌 Overview

This project implements a Cocktail Approach to build a Travel Recommendation System. The cocktail approach combines content-based filtering, collaborative filtering, and knowledge-based methods to generate personalized and accurate travel recommendations.

The system helps users discover destinations, accommodations, and travel activities based on their preferences, past choices, and trending data.

✨ Features

🔍 Personalized Travel Recommendations using hybrid (cocktail) approach

📊 Data-driven Insights from multiple travel datasets/websites

🧭 Suggests destinations, hotels, and activities

🌐 Simple and user-friendly web interface

💾 Integrated with MySQL database for storing user & location data

⚡ Built with Python (Django) + HTML/CSS/JS

🛠️ Tech Stack

Frontend: HTML, CSS, JavaScript, Bootstrap

Backend: Python (Django Framework)

Database: MySQL (via XAMPP)

Tools: PyCharm, Git, Postman

⚙️ Installation & Setup

Clone the repository

git clone https://github.com/your-username/travel-recommendation-system.git
cd travel-recommendation-system


Create & activate virtual environment

python -m venv venv
source venv/bin/activate   # For Linux/Mac
venv\Scripts\activate      # For Windows


Install dependencies

pip install -r requirements.txt


Configure database (MySQL/XAMPP)

Create a database (e.g., travel_db)

Update settings.py with your DB credentials

Run migrations

python manage.py migrate


Start the development server

python manage.py runserver


Open in browser:

http://127.0.0.1:8000/

🧪 Recommendation Approach (Cocktail Method)

The system uses a hybrid (cocktail) recommendation approach:

Content-Based Filtering – Recommends destinations similar to user’s past choices

Collaborative Filtering – Suggests based on other users with similar interests

Knowledge-Based Filtering – Uses rules and constraints (e.g., budget, climate, location type)

Final Recommendation – Weighted combination of the above methods

📂 Project Structure
travel-recommendation-system/
│── manage.py
│── requirements.txt
│── README.md
│── /travel_app
│    │── models.py
│    │── views.py
│    │── urls.py
│    │── templates/
│    │── static/
│── /travel_db

📸 Screenshots

(Add some screenshots of your UI here once ready)

🤝 Contributing

Contributions are welcome! If you’d like to improve this project, feel free to fork the repo and submit a pull request.

📜 License

This project is licensed under the MIT License – free to use and modify.

👨‍💻 Author

Nikhil Mali

🌐 Portfolio: [https://nikhil-portfolio-bay.vercel.app/]

💼 LinkedIn: [https://www.linkedin.com/in/nikhil-mali-4038212ab/]

📧 Email: nikhilmali27103@gmail.com


