//
//  QuizBrain.swift
//  Quiz-iOS13
//
//  Created by Marouf, Zakaria on 26/04/2020.
//  Copyright © 2020 Marouf, Zakaria. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    
    var score = 0
    
    let quiz = [
        Question(q: "The Oscar-winning film A Beautiful Mind (2001) deals with schizophrenia.", a: "True"),
        Question(q: "When Ronald Reagan challenged communist leaders to \"tear down this wall,\" he was referring to the Great Wall of China.", a: "False"),
        Question(q: "King Tut was one of the longest-reigning kings of ancient Egypt.", a: "False"),
        Question(q: "Veins look blue because the oxygen-depleted blood in them is blue.", a: "False"),
        Question(q: "The tango originated in Argentina.", a: "True"),
        Question(q: "Spiders belong to the \"insect\" class of animals.", a: "False"),
        Question(q: "Volleyball was invented as a game for businessmen.", a: "True"),
        Question(q: "A straight line measures 180 degrees.", a: "True"),
        Question(q: "\"You don't get to 500 million friends without making a few enemies,\" said Barack Obama.", a: "False"),
        Question(q: "Death Valley is the lowest, hottest, and driest area of North America.", a: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
