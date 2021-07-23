//
//  NameLabelEnterViewController.swift
//  exploredSegueBetweenView
//
//  Created by Maxim Kucherov on 23.07.2021.
//

import UIKit

class NameLabelEnterViewController: UIViewController {

    @IBOutlet var nameUserLabel: UILabel!
    
    var agent: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameUserLabel.font = nameUserLabel.font.withSize(40)
        nameUserLabel.text = agent
        
    }

}
