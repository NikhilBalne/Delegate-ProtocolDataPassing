//
//  SecondViewController.swift
//  Delegate&ProtocolDataPassing
//
//  Created by iHub on 18/01/20.
//  Copyright © 2020 iHubTechnologiesPvtLtd. All rights reserved.
//

import UIKit

protocol sendDataToFirstViewControllerDelegate {
    
    func dataFromFirstViewController(myData:String)
    
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate : sendDataToFirstViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendDataButtonTapped(_ sender: Any) {
        
        if delegate != nil && dataTextField.text != nil {
            delegate.dataFromFirstViewController(myData: dataTextField.text!)
            self.navigationController?.popViewController(animated: true)
        }
        
    }
}
