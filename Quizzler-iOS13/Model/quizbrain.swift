//
//  quizbrain.swift
//  Quizzler-iOS13
//
//  Created by Ádám Marton on 23.02.2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        MultiQuestion(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        MultiQuestion(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        MultiQuestion(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        MultiQuestion(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        MultiQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        MultiQuestion(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        MultiQuestion(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        MultiQuestion(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        MultiQuestion(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        MultiQuestion(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]


    var questionNumber = 0
    var score = 0
    
    mutating func countQuestions () {
        if quiz.count > questionNumber + 1 {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer (userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getOptions (index: Int) -> String {
        return quiz[questionNumber].answer[index]
    }
    
    func getQuestionText () -> String {
        let questionText = quiz[questionNumber].text
        return questionText
    }
    
    func progressBar () -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
}





