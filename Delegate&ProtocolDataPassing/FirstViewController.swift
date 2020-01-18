//
//  FirstViewController.swift
//  Delegate&ProtocolDataPassing
//
//  Created by iHub on 18/01/20.
//  Copyright © 2020 iHubTechnologiesPvtLtd. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var receivedDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let secondVC = segue.destination as? SecondViewController {
            secondVC.delegate = self
        }
        
    }
        
}

extension FirstViewController : sendDataToFirstViewControllerDelegate {
    
    func dataFromFirstViewController(myData: String) {
        receivedDataLabel.text = myData
    }
    
}
