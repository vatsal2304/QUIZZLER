//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var processView: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    
    var questionBrain = quizBrain() 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
         
        let userAnswer = sender.currentTitle!
        let userGotItRight = questionBrain.checkAnswer(userAnswer)
        
        //        let actualQuestion = quiz[questionNumber]
        
        if userGotItRight {
            sender.backgroundColor = UIColor.systemGreen
        }else{
            sender.backgroundColor = UIColor.systemRed
        }
        
        questionBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        questionLable.text = questionBrain.getQuestionText()
        processView.progress = questionBrain.getProgressView()
        
        scoreLabel.text = "score : \(questionBrain.getScore())"
    }
}

