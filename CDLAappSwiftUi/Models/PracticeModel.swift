//
//  PracticeModel.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/5/24.
//

import Foundation

struct PracticeModel: Equatable {
    let question: String
    let answers: [String]
    var selectedAnswer: String? = nil
}

struct PracticeTestModel: Equatable {
    let questionNumber: String
    let question: String
    var answers: [String]
    var selectedAnswer: String? = nil
}
