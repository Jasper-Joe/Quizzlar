//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var score: UILabel!
    
    var quizBrain = QuizBrain()
    var questionNumber = -1;
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAns = sender.currentTitle!;
        if quizBrain.checkAnswer(userAnswer:userAns) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
            
        }
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:#selector(updateUI),userInfo:nil,repeats: false)
//        updateUI();
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getNext()
        progressBar.progress = quizBrain.getProgress()
        score.text = "Score : \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
}

