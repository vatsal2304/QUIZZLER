//
//  questionBrain.swift
//  Quizzler-iOS13
//
//  Created by Funnmedia 2 on 05/07/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct quizBrain {
    let quiz = [
        Questions(q: "Four + Seven is equal to eleven", a: "True"),
        Questions(q: "Five - Three is greater than One", a: "True"),
        Questions(q: "Three + Eight is less than Ten", a: "False"),
        Questions(q: "A slug's blood is green", a: "True"),
        Questions(q: "Delhi is the capital of India", a: "True"),
        Questions(q: "Anil Ambani is the owner of JIO", a: "False"),
        Questions(q: "Gautam Adani is the richest person in the world", a: "False"),
        Questions(q: "DBMS stands for database management system", a: "True"),
        Questions(q: "Approximately one quarter of human bones are in their feet", a: "True"),
        Questions(q: "You can lead a cow down stairs but not upstairs", a: "False")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func getScore() -> Int {
           return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgressView() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    
}
