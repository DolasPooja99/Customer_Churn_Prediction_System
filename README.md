
#  Customer Churn Prediction System

This project is a full-stack machine learning application to predict customer churn. It includes:

- A trained churn prediction model (`churn_model.pkl`)
- A FastAPI backend for serving predictions
- A Streamlit dashboard for visualization
- Docker setup for easy deployment

---

##  Project Structure

```
customer_churn_prediction_system/
│
├── api/                    # FastAPI backend
│   ├── main.py
│   └── requirements.txt
│
├── dashboard/              # Streamlit dashboard
│   ├── app.py
│   └── requirements.txt
│
├── model/
│   └── churn_model.pkl     # Trained model (place here)
│
├── Dockerfile              # For FastAPI
├── docker-compose.yml
├── dashboard/Dockerfile    # For Streamlit
├── README.md               # This file
└── train_model.py          # (Optional) Script to train model
```

---

##  How to Run the Project

### 1.  Prerequisites

Ensure you have the following installed:

- Docker Desktop
- Python 3.8+ (only if training locally)
- (Optional) PostgreSQL client for DB inspection

---

### 2.  Train the Model (Optional)

If you want to train your own model:

```bash
pip install pandas scikit-learn joblib
python train_model.py
```

Move the generated `churn_model.pkl` to the `model/` directory.

---

### 3.  Run with Docker

```bash
cd customer_churn_prediction_system
docker-compose up --build
```

---

## 🔗 Access the Interfaces

- 🎛️ **Streamlit Dashboard**: http://localhost:8501
- ⚙️ **FastAPI API Docs**: http://localhost:8000/docs

---

##  Dataset Used

The model was trained using the [Telco Customer Churn dataset](https://www.kaggle.com/datasets/blastchar/telco-customer-churn), a publicly available dataset on Kaggle.

---

## 🛠 Tech Stack

- Python
- FastAPI
- Streamlit
- scikit-learn
- Docker & Docker Compose

---

##  Model Training Details

- Model: Logistic Regression
- Evaluation Metric: Accuracy
- Libraries: `scikit-learn`, `joblib`, `pandas`
- Training Script: `train_model.py`

---

##  Notes

- Make sure `churn_model.pkl` is present in the `model/` directory before starting Docker.
- Ensure Docker ports 8000 and 8501 are not blocked by other apps.


