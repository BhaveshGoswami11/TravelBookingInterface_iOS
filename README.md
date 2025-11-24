# TravelBookingInterface_iOS

A simple and elegant iOS travel booking application built using **Swift** and **UIKit**.  
This app allows users to book travel by entering their details, choosing a cabin type, and viewing a summary with total cost and confirmation.

---

## 📱 Features

- Enter traveler details:
  - Traveler Name  
  - Number of Guests  
  - Cabin Type (Economy / Luxury)
- Validates all inputs before booking.
- Calculates total cost automatically:
  - **Economy Class:** $150 per traveler  
  - **Luxury Class:** $250 per traveler
- Displays a booking summary with:
  - Traveler Name  
  - Number of Guests  
  - Cabin Type  
  - Total Cost  
  - A confirmation message and image
- Clears all fields when returning to the booking screen.

---

## 🧭 App Flow

### 1. **Booking Screen (BookingViewController)**
- Users input:
  - Traveler’s Name  
  - Number of Travelers  
  - Cabin Type  
- On tapping **Book Now**, input validation checks are performed.
- If valid, it navigates to the **Result Screen** using a storyboard segue.

### 2. **Result Screen (ResultViewController)**
- ## 🖼️ App Preview

| Home Screen | Economy Booking | Luxury Booking | Invalid Entry |
|-------------|-----------------|----------------|----------------|
| ![Home Screen](https://github.com/BhaveshGoswami11/TravelBookingInterface_iOS/blob/main/Sneak%20Peek%20of%20Working%20App/Home%20Screen.png?raw=true) | ![Economy Booking](https://github.com/BhaveshGoswami11/TravelBookingInterface_iOS/blob/main/Sneak%20Peek%20of%20Working%20App/Economy%20Booking.png?raw=true) | ![Luxury Booking](https://github.com/BhaveshGoswami11/TravelBookingInterface_iOS/blob/main/Sneak%20Peek%20of%20Working%20App/Luxury%20Booking.png?raw=true) | ![Invalid Entry](https://github.com/BhaveshGoswami11/TravelBookingInterface_iOS/blob/main/Sneak%20Peek%20of%20Working%20App/Invalid%20Entry.png?raw=true) |


---

## 🛠️ Technologies Used

- **Language:** Swift  
- **Framework:** UIKit  
- **Storyboard:** Used for UI layout and segue navigation  
- **IDE:** Xcode  
- **Assets:** Custom images for booking results (`economy`, `luxury`, `invalid`)

---

## ⚙️ How It Works

1. Launch the app and enter the booking details.
2. Tap **Book Now**.
3. If inputs are valid, you’re navigated to the **Result Screen**.
4. View your total cost and booking confirmation.
5. Return to the main screen to make another booking — all fields reset automatically.

---

## 📸 Screenshots (Optional)

Add these image files to your `Assets.xcassets` folder:

- `economy.png`  
- `luxury.png`  
- `invalid.png`

---

## 🚀 Future Enhancements

- Replace text input for cabin type with **UISegmentedControl** or **UIPickerView**.
- Add travel date selection using **UIDatePicker**.
- Store booking history using **Core Data** or **UserDefaults**.
- Add simple animations for booking confirmation.
- Enhance UI with SwiftUI or custom components.

---

## 👨‍💻 Author

**Bhavesh Goswami**  
📅 Created on: *October 29, 2025*  
📍 Northwest Missouri State University  
🧠 Swift | UIKit | iOS Development

---

## 📝 License

This project is for educational and demonstration purposes only.  
You’re free to modify and extend it as needed.
