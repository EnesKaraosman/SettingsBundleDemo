//
//  ViewController.swift
//  SettingsBundleLab
//
//  Created by Enes Karaosman on 24.01.2020.
//  Copyright © 2020 Etiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urlLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urlLabel.text = Environment.selected.url
        
    }


}

