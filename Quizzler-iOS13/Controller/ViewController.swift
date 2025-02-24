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
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi()
        progressBar.progress = 0.0
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        quizBrain.countQuestions()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
    }
    
    @objc func updateUi() {
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        questionLabel.text = quizBrain.getQuestionText()
        button1.setTitle(quizBrain.getOptions(index: 0), for: .normal)
        button2.setTitle(quizBrain.getOptions(index: 1), for: .normal)
        button3.setTitle(quizBrain.getOptions(index: 2), for: .normal)
        
        progressBar.progress = quizBrain.progressBar()
        scoreLabel.text = "Score: \(quizBrain.score)/\(quizBrain.questionNumber)"
    }
    
}

