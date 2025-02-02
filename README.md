# EHealth Android Mobile Application

This is a mobile application developed as part of my dissertation project during my Master's in Computing at Sheffield Hallam University. This application is built using the **.NET MAUI** framework (formerly Xamarin) in C# with Visual Studio.

---

## Table of Contents

1. [Development Details](#development-details)
2. [Introduction](#introduction)
3. [Application Features and Screenshots](#application-features-and-screenshots)
   - [Patient Details Page](#1-patient-details-page)
   - [Emergency Contacts Page](#2-emergency-contacts-page)
   - [Physical Mishaps Graph](#3-physical-mishaps-graph)
   - [Pre-Alert Notification](#4-pre-alert-notification)
   - [Notify Contacts](#5-notify-contacts)
4. [Database Details](#database-details)
5. [Installation](#installation)
6. [Steps to Run the Application](#steps-to-run-the-application)
7. [Steps to Run on a Physical Device](#steps-to-run-on-a-physical-device)

---

## Development Details

| **Aspect**                  | **Details**                                      |
|-----------------------------|--------------------------------------------------|
| **Development Language**    | C#                                              |
| **Development Framework**   | .NET MAUI (formerly Xamarin)                     |
| **Development Architecture**| MVVM                                            |
| **Development Platform**    | Visual Studio                                   |
| **Data Storage Platform**   | SQLite Server Compact Toolbox                   |
| **State of the Art Approach**| Fuzzy Logic                                    |

---

## Introduction

The increasing elderly population presents significant challenges, leading to the need for innovative solutions to ensure their safety and well-being. This project involves the development of a wearable bracelet equipped with accelerometers, integrated with a mobile application for the remote monitoring of elderly individuals.

The prototype mobile application utilizes the phone's accelerometer to detect and record movements. It employs fuzzy logic-based artificial intelligence to interpret activity data and generate timely email alerts for caregivers or family members when abnormal behavior is detected. Key features include:

- **Activity Classification**: Detects falls, idle states, and active periods.
- **Pre-Alert Notification System**: Improves accuracy and reduces false alarms.
- **High Detection Accuracy**: Achieves 90% for fall detection and 93% for idle detection.

This solution offers a reliable, user-friendly approach for continuous elderly care, with potential for future enhancements, including integration with a wearable bracelet.

---

## Application Features and Screenshots

### 1. **Patient Details Page**
Displays general patient details entered during installation, as well as daily, weekly, and monthly activity graphs.

<p align="center">
  <img src="https://github.com/user-attachments/assets/128204a8-3d52-4492-b82b-8dbf0a498f60" alt="Patient Details 1" width="300" height="600" >
  <img src="https://github.com/user-attachments/assets/99709861-bb94-41ab-bf52-5c767ca0df91" alt="Patient Details 2" width="300" height="600">
</p>

---

### 2. **Emergency Contacts Page**
Allows users to enter emergency contact details (name, relationship, email, and phone number). In the event of abnormal activity, email alerts are sent to all emergency contacts.

<p align="center">
  <img src="https://github.com/user-attachments/assets/aab5d89d-42e9-4088-ae20-798de52b4a10" alt="Emergency Contacts 1" width="300" height="600" >
  <img src="https://github.com/user-attachments/assets/080c08e4-e7b9-4097-8ee6-3ba9ab21f780" alt="Emergency Contacts 2" width="300" height="600">
</p>

---

### 3. **Physical Mishaps Graph**
Changes to red when abnormal activities, such as falls or prolonged idleness, are detected.

<p align="center">
  <img src="https://github.com/user-attachments/assets/8ab455a4-9861-4f66-baa5-125c7a337d05" alt="Physical Mishaps Graph"  width="300" height="600">
</p>

---

### 4. **Pre-Alert Notification**
Provides a three-minute window with notifications every minute, allowing users to cancel the alert if the detected activity is not an emergency.

<p align="center">
  <img src="https://github.com/user-attachments/assets/5d2e58c2-cbdb-46db-8753-074294fa5f26" alt="Pre-Alert Notification" width="300" height="600">
</p>

---

### 5. **Notify Contacts**
- To send emails, the application utilizes **SMTP (Simple Mail Transfer Protocol)**.
- To ensure the security of sensitive information (such as the email ID and password used for sending alerts), the application employs the **secure storage** function in ASP.NET.
- This feature encrypts and securely stores the email credentials, preventing unauthorized access and ensuring the security of the information.

<p align="center">
  <img src="https://github.com/user-attachments/assets/17b17575-3d36-44d3-af9b-1e4431abc480" alt="Notify Contacts">
</p>

---

## Database Details

The application uses **SQLite** for local data storage with the following tables:
- **SensorData**
- **User**
- **Emergency Contacts**
- **AlertRecords**

All user data is synced with the **Firebase** database to store and review the activity history of users. This allows caregivers and doctors to access critical data in case of emergencies.

---

## Installation

1. [Download Visual Studio](https://visualstudio.microsoft.com/).
2. During installation, select the **.NET Multi-platform App UI development** workload.
3. Ensure that Android SDKs are installed and configured in **Tools > Options > Android Settings**.
4. Use the **Android Device Manager** in Visual Studio to set up an emulator.
5. git clone https://github.com/rakshambigai20/eHealthMobileApp.git

---

## Steps to Run the Application

1. Open the `.sln` file from the cloned repository.
2. Use the dropdown menu in the toolbar to select an emulator or connected physical Android device.
3. Navigate to **Build > Build Solution** or press `Ctrl+Shift+B`.
4. Click the **Run** button or press `F5`.

---

## Steps to Run on a Physical Device

1. Open the **Developer Options** menu on your Android device.
2. Turn on **USB Debugging**.
3. Connect your device to your computer via USB.
4. When prompted on your device, allow debugging access.
5. In the target device dropdown, select your connected device.
