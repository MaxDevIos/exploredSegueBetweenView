//
//  ViewController.swift
//  exploredSegueBetweenView
//
//  Created by Maxim Kucherov on 23.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameUserTextField: UITextField!
    @IBOutlet var nameUserButtonPressed: UIButton!
    @IBOutlet var surnameBackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameUserButtonPressed.backgroundColor = .systemBlue
        nameUserButtonPressed.setTitle("Done", for: .normal)
        nameUserButtonPressed.setTitleColor(.white, for: .normal)
        nameUserButtonPressed.layer.cornerRadius = 15
        nameUserButtonPressed.titleLabel?.font = nameUserButtonPressed.titleLabel?.font.withSize(20)
        
        surnameBackLabel.font = surnameBackLabel.font.withSize(30)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nameUser = segue.destination as? NameLabelEnterViewController else { return }
        nameUser.agent = nameUserTextField.text
    }

    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard let surnameBack = segue.source as? SurnameBackViewController else { return }
        surnameBackLabel.text = surnameBack.surnameTextField.text
    }

}

