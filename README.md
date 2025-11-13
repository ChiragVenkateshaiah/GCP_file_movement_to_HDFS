# GCP_file_movement_to_HDFS
A solution to upload files to HDFS via Google Cloud Platform. Scripts for reference


# File Movement to HDFS (Google Cloud Storage → VM → HDFS)

This repository documents the exact steps required to:
1. Upload a file into a Google Cloud Storage bucket  
2. Copy that file into a Linux VM using `gsutil`  
3. Move the copied file into HDFS using Hadoop commands  

---

## 🚀 Step-by-Step Process

### **Step 1 — Upload file to Google Cloud Storage (via Console)**

1. Go to **Google Cloud Console**
2. Open **Cloud Storage → Buckets**
3. Select your bucket (Example: `log_files_bucket_chirag`)
4. Click **Upload File**
5. Choose your file (Example: `logfiles.txt`)
6. Confirm upload

---

### **Step 2 — Copy file from Cloud Storage to the VM**

SSH into your **Namenode or Master Node**:

```bash
gcloud compute ssh <vm-name> --zone <zone>
