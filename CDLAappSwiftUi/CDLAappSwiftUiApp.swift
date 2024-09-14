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
    @ObservedObject var router = Router()
    @ObservedObject var languageManager = LanguageManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                ContentView()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .practice:
                            PracticeStack(
                                viewModel: .init(languageManager: languageManager)
                            )
                        case .exam:
                            ExamView()
                        case .debug:
                            DebugView()
                        }
                    }
                    .environmentObject(router)
                    .environmentObject(languageManager)
            }
        }
    }
}
/** ToDo:
 1.Property Wrapper
 2.  viewModel.loadData(lang: languageManager.current) доделать со помощью Switch Case
 3.Change Lang alert // done
 v
 */
    
