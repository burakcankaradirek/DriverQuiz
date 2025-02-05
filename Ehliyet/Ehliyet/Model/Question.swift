//
//  Question.swift
//  Ehliyet
//
//  Created by Burak Can Karadirek on 13.12.2024.
//

import Foundation

struct Question {
    let text: String
    
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
