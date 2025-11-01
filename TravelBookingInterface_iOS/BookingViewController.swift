//
//  ViewController.swift
//  Goswami_TravelBooking
//
//  Created by Bhavesh on 10/29/25.
//

import UIKit

class BookingViewController: UIViewController {

    @IBOutlet weak var travellerNameOL: UITextField!
       @IBOutlet weak var noOfTravellersOL: UITextField!
       @IBOutlet weak var cabinTypeOL: UITextField!
       
       override func viewDidLoad() {
           super.viewDidLoad()
       }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Clear all text fields when returning to this screen
            travellerNameOL.text = ""
            noOfTravellersOL.text = ""
            cabinTypeOL.text = ""
        }
       
       @IBAction func bookNowButton(_ sender: UIButton) {
           // Validate inputs
           guard let name = travellerNameOL.text, !name.isEmpty else {
               showAlert(message: "Please enter traveller's name")
               return
           }
           
           guard let travellersText = noOfTravellersOL.text,
                 let numberOfTravellers = Int(travellersText),
                 numberOfTravellers > 0 else {
               showAlert(message: "Please enter a valid number of travellers")
               return
           }
           
           guard let cabinType = cabinTypeOL.text?.lowercased(), !cabinType.isEmpty else {
               showAlert(message: "Please enter cabin type")
               return
           }
           
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "ResultSegue" {
               if let resultVC = segue.destination as? GoswamiResultViewController {
                   // Pass data to result view controller
                   resultVC.travellerName = travellerNameOL.text ?? ""
                   resultVC.numberOfTravellers = Int(noOfTravellersOL.text ?? "0") ?? 0
                   resultVC.cabinType = cabinTypeOL.text ?? ""
               }
           }
       }
       
       func showAlert(message: String) {
           let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default))
           present(alert, animated: true)
       }
}

