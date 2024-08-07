//
//  CDLAappSwiftUiApp.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/1/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    
    return true
  }
}

@main
struct CDLAappSwiftUiApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

  var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
      }
    }
  }
}

/**
 1.Возвращение на главный экран Practice Mode
 2.Добавить правильные ответы + Поработую над данными в FireBase
 3.Показывать правильный ответ при нажатии Submit
 4.Result Screen
 5,Localisation
 6.
 */
