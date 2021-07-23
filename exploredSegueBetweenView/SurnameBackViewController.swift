//
//  SurnameBackViewController.swift
//  exploredSegueBetweenView
//
//  Created by Maxim Kucherov on 23.07.2021.
//

import UIKit

class SurnameBackViewController: UIViewController {
    
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var surnameTextField: UITextField!
    
    override func viewDidLoad() {
        
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(.white, for: .normal)
        saveButton.titleLabel?.font = saveButton.titleLabel?.font.withSize(25)
        saveButton.layer.cornerRadius = 15
        saveButton.backgroundColor = .systemBlue
        
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(.white, for: .normal)
        cancelButton.titleLabel?.font = cancelButton.titleLabel?.font.withSize(25)
        cancelButton.layer.cornerRadius = 15
        cancelButton.backgroundColor = .systemBlue
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    deinit {
        print("SurnameBackViewController has been delocated")
    }
    
}
