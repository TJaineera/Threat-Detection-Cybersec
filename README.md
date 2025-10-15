# AI-Powered Cybersecurity Threat Detection System

Machine learning–based intrusion detection using security logs / network telemetry. Classifies DoS, Probe, R2L, U2R, and Normal traffic. Includes training scripts and a Flask API for real-time predictions.

---

## Features
- Supervised ML pipeline (scikit-learn)
- Real-time predictions via Flask API with confidence scores
- Reproducible preprocessing with saved encoders/label map
- Scripts for preprocess → train → evaluate → serve

---

## Project Structure
Threat-Detection-Cybersec/
├── data/ # Raw & processed datasets (not tracked)
│ ├── raw/ # e.g., NSL-KDD/KDD'99 ARFF/CSV
│ └── processed/ # outputs from preprocess.py
├── models/ # Saved models & encoders
│ ├── threat_detector_rf.pkl
│ ├── feature_columns.json
│ └── encoders.joblib
├── src/
│ ├── preprocess.py # ARFF/CSV → encoded features + labels
│ ├── train.py # Train & persist model + artifacts
│ ├── predict.py # Batch/local predictions for CSV/JSON
│ └── deploy.py # Flask API for real-time predictions
├── requirements.txt
├── README.md
└── .gitignore


> **Dataset**: This repo expects NSL-KDD/KDD’99-style columns. Place raw files under `data/raw/` (e.g., `KDDTrain+.txt`, `KDDTest+.txt`, or ARFF). Update paths in `src/preprocess.py` if yours differ.

---

## Setup

### 1) Clone
```bash
git clone https://github.com/TJaineera/Threat-Detection-Cybersec.git
cd Threat-Detection-Cybersec
