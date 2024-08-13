//
//  ContentView.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
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
                Spacer()
                Spacer()
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
}

#Preview {
    ContentView()
}




struct ButtonsView: View {
    var body: some View {
        
        VStack{
            PracticeModeButton()
                .padding(50)
            ExamModeButton()
            DebugModeButton()
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
    var body: some View {
        Button{
            print("Work")
        }label: {
            Text("o o o")
        }
        .foregroundColor(.white)
        .padding()
    }
    
}

struct PracticeModeButton: View {
    var body: some View {
        NavigationLink{
            PracticeStack(
                viewModel: .init()
            )
        } label: {
            Text("Practice Mode")
            
        }
        .frame(width: 200, height: 40)
        .border(.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
    }
}

struct ExamModeButton: View {
    var body: some View {
        NavigationLink{
            ExamView()
        }label: {
            Text("Exam Mode")
            
        }
        .frame(width: 200, height: 40)
        .border(.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        
    }
}

struct DebugModeButton: View {
    var body: some View {
        NavigationLink{
            DebugView()
        }label: {
            Text("Debug Mode")
            
        }
        .frame(width: 200, height: 40)
        .border(.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        
    }
}


