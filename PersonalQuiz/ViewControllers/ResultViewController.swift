//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Александр on 29.07.2024.
//

import UIKit

final class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
    }
    
    
    @IBAction func doneButtonPressed() {
        dismiss(animated: true)
    }
    
}
