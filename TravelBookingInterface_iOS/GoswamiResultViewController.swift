//
//  ResultViewController.swift
//  Goswami_TravelBooking
//
//  Created by Bhavesh on 10/29/25.
//

import UIKit

class GoswamiResultViewController: UIViewController {

    
       @IBOutlet weak var imageOL: UIImageView!
       @IBOutlet weak var travellerNameOL: UILabel!
       @IBOutlet weak var noOfTravellersOL: UILabel!
       @IBOutlet weak var cabinTypeOL: UILabel!
       @IBOutlet weak var totalCostOL: UILabel!
       @IBOutlet weak var resultOL: UILabel!
       
       // Properties to receive data from BookingViewController
       var travellerName: String = ""
       var numberOfTravellers: Int = 0
       var cabinType: String = ""
       
       // Pricing constants
       let economyPrice = 150
       let luxuryPrice = 250
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           // Process and display the booking information
           displayBookingDetails()
       }
       
       func displayBookingDetails() {
           // Convert cabin type to lowercase for case-insensitive comparison
           let cabin = cabinType.lowercased().trimmingCharacters(in: .whitespaces)
           
           // Display traveller name and number of travellers
           travellerNameOL.text = "Traveller Name: \(travellerName)"
           noOfTravellersOL.text = "No. Of Guest: \(numberOfTravellers)"
           
           // Check if cabin type is valid
           if cabin == "economy" {
               // Economy class booking
               let totalCost = economyPrice * numberOfTravellers
               cabinTypeOL.text = "Class Type: Economy"
               totalCostOL.text = "Total Cost: $\(totalCost)"
               resultOL.text = "Booking Successful! Have a great journey!"
               imageOL.image = UIImage(named: "economy")
               
           } else if cabin == "luxury" {
               // Luxury class booking
               let totalCost = luxuryPrice * numberOfTravellers
               cabinTypeOL.text = "Class Type: Luxury"
               totalCostOL.text = "Total Cost: $\(totalCost)"
               resultOL.text = "Booking Successful! Enjoy your luxury travel!"
               imageOL.image = UIImage(named: "luxury")
               
           } else {
               // Invalid cabin type
               cabinTypeOL.text = "Class Type: "
               totalCostOL.text = "Total Cost: "
               resultOL.text = "Please select a valid class"
               imageOL.image = UIImage(named: "invalid")
           }
           
           // Set image content mode
           imageOL.contentMode = .scaleAspectFit
       }

}
