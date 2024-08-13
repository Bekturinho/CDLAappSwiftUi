//
//  UserDefaultsFacade.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 8/7/24.
//

import Foundation

final class UserDefaultsFacade {
    let userDefaults = UserDefaults.standard
    
    enum ValueType: String {
        case examAttempt
        case averageScore
        case practiceModeAnswer
        case practiceModeCorrectAnswer
    }
    
    // во вью модель
    func plus(_ type: ValueType) {
        if let value = userDefaults.value(forKey: type.rawValue) as? Int {
            userDefaults.set(value+1, forKey: type.rawValue)
        } else {
            userDefaults.set(1, forKey: type.rawValue)
        }
    }
    
    // на главную
    func getValue(_ type: ValueType) -> Int {
        // вернуть значение для ключа из юзер дефаултс
        0
    }
}

//let facade = UserDefaultsFacade()
//
//facade.plus(.averageScore)
//facade.plus(.practiceModeAnswer)
//
//if answer = correctAnswer {
//    facade.plus(.practiceModeCorrectAnswer)
//}
