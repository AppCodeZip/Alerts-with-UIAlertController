//
//  ViewController.swift
//  Helo
//
//  Created by Sushil Rathaur on 02/07/20.
//  Copyright © 2020 AppCodeZip. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        

}
    @IBAction func showOneButtonTapped(_ sender: UIButton) {

        // create the alert
        let alert = UIAlertController(title: "AppCodeZip", message: "pls like appcodezip fb page.", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
       
    }
    @IBAction func showTwoButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Sign out?", message: "Are You Sure to Log Out ? ",preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "OK",
                                      style: UIAlertAction.Style.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func showThreeButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "AppCodeZip", message: "Alert with more than 2 buttons", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: { (_) in
            print("You've pressed default")
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in
            print("You've pressed cancel")
        }))

        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (_) in
            print("You've pressed the destructive")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func simpleActionSheet(_ sender: Any) {

              let alert = UIAlertController(title: "AppCodeZip", message: "Please Select an Option", preferredStyle: .actionSheet)
              alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { (_) in
                  print("User click Submit button")
              }))

              alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
                  print("User click Edit button")
              }))

              alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
                  print("User click Delete button")
              }))

              alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
                  print("User click Dismiss button")
              }))

              self.present(alert, animated: true, completion: {
                  print("completion block")
              })
          }

    @IBAction func showAlertWithDistructiveButton(_ sender: Any) {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: UIAlertAction.Style.destructive,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }

@IBAction func showAlertWithTextField(_ sender: Any) {
    
        let alertController = UIAlertController(title: "Pls enter email id for subscribe", message: nil, preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Submit", style: .default) { (_) in
            if let txtField = alertController.textFields?.first,
                let text = txtField.text {
                // operations
                print("Text==>" + text)
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        alertController.addTextField { (textField) in
            textField.placeholder = "Please Subscribe AppCodeZip"
        }
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    //MARK:- UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    }
    



