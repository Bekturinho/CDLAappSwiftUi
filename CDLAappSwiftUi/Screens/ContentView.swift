//
//  ContentView.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/1/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            HStack{
                GeneralKnowlegeButton()
                Spacer()
                ConfigurationButton()
                
            }
            Spacer()
            
            ButtonsView()
            
            
            Spacer()
            Spacer()
            ResultView()
            
        }
        
        .background{
            Color.black
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}




struct ButtonsView: View {
    var body: some View {
        
        VStack{
            PracticeModeButton()
            
            ExamModeButton()
                .padding()
        }
        
        
    }
}


struct ResultView: View {
    var body: some View {
        
        VStack{
            Text("Topic Summary")
            ExamAttemepsLabel()
            AverageExamLabel()
            PracticeModeAsweredLabel()
            PracticeModeCorrectLabel()
            Text("Total Study Time")
                .padding()
        }
        .foregroundColor(.white)
    }
}



struct ExamAttemepsLabel: View {
    var body: some View {
        HStack{
            Text("Exam Attemps ")
            Spacer()
            Text("0")
        }
    }
}

struct AverageExamLabel: View {
    var body: some View {
        HStack{
            Text("Average Exam Test Score")
            Spacer()
            Text("0")
        }
    }
}


struct PracticeModeAsweredLabel: View {
    var body: some View {
        HStack{
            Text("Pracrice Mode Answered")
            Spacer()
            Text("0")
        }
    }
}


struct PracticeModeCorrectLabel: View {
    var body: some View {
        HStack{
            Text("Practice Mode Correctly")
            Spacer()
            Text("0")
        }
    }
}






struct GeneralKnowlegeButton: View {
    var body: some View {
        Button{
            print("Work")
        }label: {
            Text("General Knowlegde")
            Image(systemName: "chevron.down")
        }
        
        .foregroundColor(.white)
        .padding()
    }
}

struct ConfigurationButton: View {
    @State private var showActionSheet = false
    @State private var showLanguagePicker = false
    
    @EnvironmentObject var router: Router
    @State private var selectedLanguage: LanguageManager.Language = .eng
    @EnvironmentObject var languageManager: LanguageManager
    
    
    var languageButtons: [Alert.Button] {
        LanguageManager.Language.allCases.map { lang in
                .default(Text(lang.title)) {
                    languageManager.changeLanguage(lang: lang)
                }
        } + [.cancel()]
    }
    var body: some View {
        
        VStack {
            Button("o o o"){
                showActionSheet = true
                
                
            }
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(
                    title: Text("Действия"),
                    message: Text("Выберите действие"),
                    buttons: [
                        
                        .default(Text("Choose Language")) {
                            showLanguagePicker = true
                            
                        },
                        .default(Text("Go to Debug")) {router.navigate(to: .debug)},
                        
                            .cancel()
                    ]
                )
            }
            
            .sheet(isPresented: $showLanguagePicker) {
                VStack {
                    Text("Выберите язык")
                        .font(.headline)
                    Picker("Language", selection: $selectedLanguage) {
                        ForEach(LanguageManager.Language.allCases, id: \.self) { lang in
                            Text(lang.title).tag(lang)
                            
                        }
                        
                    }
                    .pickerStyle(WheelPickerStyle())
                    
                    Button("Save") {
                        languageManager.current = selectedLanguage
                        showLanguagePicker = false
                    }
                }
                .foregroundColor(.black)
                .padding()
            }
        }
        .foregroundColor(.white)
        .padding()
    }
    
}



struct PracticeModeButton: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        Button {
            router.navigate(to: .practice)
        } label: {
            Text("Practice Mode")
            
        }
        .frame(width: 200, height: 40)
        .border(.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
    }
}

struct ExamModeButton: View {
    @EnvironmentObject var router: Router
    var body: some View {
        Button{
            router.navigate(to: .exam)
        }label: {
            Text("Exam Mode")
            
        }
        .frame(width: 200, height: 40)
        .border(.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        
    }
}




