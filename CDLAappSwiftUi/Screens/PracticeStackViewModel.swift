//
//  PracticeStackViewModel.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/23/24.
//

import Foundation

final class PracticeStackViewModel: ObservableObject {
    var questions: [PracticeModel] = []
    // TODO: - Loader
    @Published var currentQuestion: PracticeModel
    var indexOFSHeet: Int
    private let firebaseService = FirebaseService()
    
    init() {
        currentQuestion = .init(questionNumber: "", question: "", answers: [], correctAnswer: "");
        indexOFSHeet = .init(0)
    }
    
    func goForward(callback: () -> Void) {
        guard let lastQuestion = questions.last, currentQuestion != lastQuestion else {
            callback()
            return
        }
        
        if let index = questions.firstIndex(where: { $0.questionNumber == currentQuestion.questionNumber }), index < questions.endIndex {
            currentQuestion = questions[index+1]
            print("Go Forward Works")
        }
        
    }
    
    func goForwardTOSheet(callback: () -> Void){
        guard let lastQuestion = questions.last, currentQuestion != lastQuestion else {
            callback()
            return
        }
        
        if let index = questions.firstIndex(where: { $0.questionNumber == currentQuestion.questionNumber }), index < questions.endIndex {
            currentQuestion = questions[indexOFSHeet]
            print(currentQuestion)
        }
    }
    
   
    func loadData() {
        firebaseService.getQuestions { model in
            self.questions = model.sorted(by: { Int($0.questionNumber) ?? 0 < Int($1.questionNumber) ?? 0 })
            self.currentQuestion = self.questions[0]
            
        }
   
    }
    
    func loadDataForSheet() {
            firebaseService.getQuestions { model in
                self.questions = model.sorted(by: { Int($0.questionNumber) ?? 0 < Int($1.questionNumber) ?? 0 })
                self.currentQuestion = self.questions[self.indexOFSHeet]
            }
    }
}
