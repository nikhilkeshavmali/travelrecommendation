<div align="center">

# 🧭 Travel Recommendation System

**A Hybrid "Cocktail Approach" to Personalized Travel Discovery**

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Django](https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=white)](https://www.djangoproject.com/)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)

 [Report Bug](#) · [Request Feature](#)

</div>

---

## 📌 Overview

**Travel Recommendation System** implements a **cocktail approach** — a hybrid recommendation strategy that blends **content-based filtering**, **collaborative filtering**, and **knowledge-based methods** into a single, weighted engine. The result is more accurate and more personalized travel suggestions than any single method could produce alone.

The system helps users discover **destinations, accommodations, and activities** based on their individual preferences, past choices, and broader trending travel data.

## ✨ Features

| Category | Capabilities |
|---|---|
| 🔍 **Hybrid Recommendations** | Personalized suggestions powered by the cocktail (hybrid) approach |
| 📊 **Data-Driven Insights** | Aggregated from multiple travel datasets and sources |
| 🧭 **Discovery** | Suggests destinations, hotels, and activities tailored to the user |
| 🌐 **Web Interface** | Clean, responsive, user-friendly frontend |
| 💾 **Persistent Storage** | MySQL database for user and location data |

## 🧪 Recommendation Approach (Cocktail Method)

The engine combines three complementary strategies into one final ranking:

1. **Content-Based Filtering** — recommends destinations similar to the user's past choices
2. **Collaborative Filtering** — surfaces suggestions based on users with similar interests
3. **Knowledge-Based Filtering** — applies rule-based constraints (budget, climate, location type)
4. **Final Recommendation** — a weighted combination of all three signals

```
User Preferences & History
        │
        ├──▶ Content-Based Filtering ───┐
        ├──▶ Collaborative Filtering ───┼──▶ Weighted Combination ──▶ Final Recommendations
        └──▶ Knowledge-Based Rules ─────┘
```

## ⚙️ Tech Stack

**Frontend:** HTML · CSS · JavaScript · Bootstrap

**Backend:** Python (Django)

**Database:** MySQL (via XAMPP)

**Tools:** PyCharm · Git · Postman

## 📂 Project Structure

```
travel-recommendation-system/
│
├── manage.py
├── requirements.txt
├── README.md
│
├── travel_app/
│   ├── models.py
│   ├── views.py
│   ├── urls.py
│   ├── templates/
│   └── static/
│
└── travel_db/
```

## 🚀 Getting Started

### Prerequisites
- Python 3.10+
- MySQL / XAMPP
- Git

### 1. Clone the repository
```bash
git clone https://github.com/nikhilkeshavmali/travel-recommendation-system.git
cd travel-recommendation-system
```

### 2. Create & activate a virtual environment
```bash
python -m venv venv
source venv/bin/activate     # macOS/Linux
venv\Scripts\activate        # Windows
```

### 3. Install dependencies
```bash
pip install -r requirements.txt
```

### 4. Configure the database
- Create a MySQL database (e.g. `travel_db`) via XAMPP
- Update `settings.py` with your database credentials

### 5. Run migrations
```bash
python manage.py migrate
```

### 6. Start the development server
```bash
python manage.py runserver
```
Open `http://127.0.0.1:8000/` in your browser.

## 🤝 Contributing

Contributions are welcome! Fork the repo, create a feature branch, and submit a pull request.

## 📜 License

This project is licensed under the **MIT License** — free to use and modify.

## 👨‍💻 Author

**Nikhil Mali**
Full Stack Developer

[![Portfolio](https://img.shields.io/badge/Portfolio-000000?style=for-the-badge&logo=vercel&logoColor=white)](https://nikhil-portfolio-bay.vercel.app/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nikhil-mali-4038212ab/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:nikhilmali27103@gmail.com)
