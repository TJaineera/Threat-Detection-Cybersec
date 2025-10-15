AI-Powered Cybersecurity Threat Detection System:

This project leverages Machine Learning and Security Logs to detect cyber threats in real time. It classifies intrusions such as DoS, Probe, R2L, U2R, and Normal traffic using AI models.
Features
- AI-powered intrusion detection using scikit-learn
- Detects malware, phishing, DoS, Probe, and unauthorized access
- Built with Flask API for real-time threat predictions
- Displays confidence scores for each prediction
- Modular structure for easy retraining and deployment
Project Structure

Threat-Detection-Cybersec/
├── data/                      # Raw and processed datasets
│   ├── raw/                   # Source ARFF or CSV files
│   └── processed/             # Cleaned data for training/testing
├── models/                    # Trained model and encoders
│   └── threat_detector_rf.pkl
├── src/                       # Source scripts
│   ├── preprocess.py          # Data loading & preprocessing
│   ├── train.py               # Model training
│   ├── predict.py             # Batch/local predictions
│   └── deploy.py              # Flask API for real-time predictions
├── requirements.txt           # Project dependencies
├── README.md                  # Documentation
└── .gitignore                 # Ignored files

Installation & Setup
1. Clone this repository:
   
git clone https://github.com/TJaineera/Threat-Detection-Cybersec.git

cd Threat-Detection-Cybersec

2. Create and activate a virtual environment:
   
python -m venv venv

venv\Scripts\activate (Windows)

source venv/bin/activate (macOS/Linux)

3. Install dependencies:

pip install -r requirements.txt

Usage Guide

Preprocess Data: 
python src/preprocess.py

Train Model: 
python src/train.py

Local Prediction: 
python src/predict.py

Deploy Flask API: 
python src/deploy.py

Test the API (Windows example): 
curl -X POST http://127.0.0.1:5000/predict -H "Content-Type: application/json" -d "[{\"duration\":0,\"protocol_type\":\"tcp\",\"service\":\"http\",\"flag\":\"SF\",\"src_bytes\":181,\"dst_bytes\":545}]"
Example Response

{
  "prediction": ["normal"],
  "confidence": [0.996]
}

Requirements

pandas==2.2.2
numpy==1.26.4
scikit-learn==1.5.2
flask==3.0.3
joblib==1.4.2
liac-arff==2.5.0
imbalanced-learn==0.12.3

Model Overview

Algorithm       | Description                            | Accuracy
----------------|----------------------------------------|----------
Random Forest   | Ensemble of decision trees              | 98.7%
SVM (optional)  | Kernel-based classification             | 95.4%
Logistic Reg.   | Baseline linear model                   | 91.8%

Future Enhancements
- Integrate deep learning (LSTM/CNN for log sequences)
- Add anomaly detection with unsupervised learning
- Include dashboard for visualization
- Deploy on AWS Lambda or Docker
