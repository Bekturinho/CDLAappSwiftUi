//
//  Router.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 8/27/24.
//

import SwiftUI

final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case practice
        case exam
        case debug
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}

final class LanguageManager: ObservableObject {
    
    public enum Language: Codable, Hashable, CaseIterable {
        case ru
        case kg
        case eng
        
        var title: String {
            switch self {
            case .ru:
                "RU"
            case .kg:
                "KG"
            case .eng:
                "ENG"
            }
        }
        
        var id: String {
            switch self {
            case .ru:
                "questionsRU"
            case .kg:
                "questionsKG"
            case .eng:
                "questions"
            }
        }
    }
    
    @Published var current = Language.eng
    
    func changeLanguage(lang: Language) {
        current = lang
        print(current)
    }
}
