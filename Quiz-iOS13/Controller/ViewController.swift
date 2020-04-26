//
//  ViewController.swift
//  Quiz-iOS13
//
//  Created by Marouf, Zakaria on 26/04/2020.
//  Copyright © 2020 Marouf, Zakaria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        trueButton.layer.cornerRadius = 20
        trueButton.layer.borderWidth = 5
        trueButton.layer.borderColor = UIColor.systemPink.cgColor
        
        falseButton.layer.cornerRadius = 20
        falseButton.layer.borderWidth = 5
        falseButton.layer.borderColor = UIColor.systemPink.cgColor
        
        updateUI()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
        sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
            questionLabel.text = quizBrain.getQuestionText()
            progressBar.progress = quizBrain.getProgress()
            scoreLabel.text = "Score: \(quizBrain.getScore())"
            
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }
}

