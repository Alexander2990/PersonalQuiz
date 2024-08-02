//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Александр on 29.07.2024.
//

import UIKit

final class ResultViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: Properties
    var answerChosen: [Answer]!
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        showResult()
    }
    
    // MARK: IB Actions
    @IBAction func doneButtonPressed() {
        dismiss(animated: true)
    }
}

    // MARK: Private Methods
private extension ResultViewController {
    func findMostCommonAnimal(from answers: [Answer]) -> Animal? {
        let animalCounts = answerChosen.reduce(into: [:]) { counts, answer in
            counts[answer.animal, default: 0] += 1
        }
        return animalCounts.max { $0.value < $1.value }?.key
    }
    
    func showResult() {
        guard let animal = findMostCommonAnimal(from: answerChosen) else { return }
        resultLabel.text = "Вы \(animal.rawValue)!"
        descriptionLabel.text = animal.definition
    }
}
