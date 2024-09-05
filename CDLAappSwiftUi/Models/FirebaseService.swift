//
//  FireBaseService.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 7/4/24.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore

class FirebaseService {
    @EnvironmentObject var languageManager: LanguageManager
    let db: Firestore
    
    init() {
        self.db = Firestore.firestore()
    }
    
    func addQuestion(model: PracticeModel, language: String) {
            do {
                try db.collection(language).addDocument(from: model)
            } catch {
                print("Add Question ERROR")
            }
        
    }
    
    
//    questions/languages/ru/вопросы
    func getQuestions(callback: @escaping ([PracticeModel]) -> Void) {
        switch languageManager.current{
        case.eng:
            db.collection("questions").getDocuments { (querySnapshot, error) in
                if let error = error {
                    print("Error getting documents: \(error)")
                }
                
                let model = querySnapshot?.documents.compactMap {
                    return try? $0.data(as: PracticeModel.self)
                }

                if let model {
                    callback(model)
                }
            }
        case .ru:
            db.collection("questionsRU").getDocuments { (querySnapshot, error) in
                if let error = error {
                    print("Error getting documents: \(error)")
                }
                
                let model = querySnapshot?.documents.compactMap {
                    return try? $0.data(as: PracticeModel.self)
                }

                if let model {
                    callback(model)
                }
            }
        case .kg:
            db.collection("questionsKG").getDocuments { (querySnapshot, error) in
                if let error = error {
                    print("Error getting documents: \(error)")
                }
                
                let model = querySnapshot?.documents.compactMap {
                    return try? $0.data(as: PracticeModel.self)
                }

                if let model {
                    callback(model)
                }
            }
        }
        
    }
}
