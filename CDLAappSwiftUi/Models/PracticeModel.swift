//
//  PracticeModel.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/5/24.
//

import Foundation

struct PracticeModel: Equatable, Codable {
    let questionNumber: String
    let question: String
    var answers: [String]
    var selectedAnswer: String? = nil
    let correctAnswer: String
}


struct DataType{
    let kg = "questionsKG"
    let ru = "questionsKG"
    let eng = "questions"
}
