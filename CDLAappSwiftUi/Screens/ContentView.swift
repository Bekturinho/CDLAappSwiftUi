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
        //        ZStack{
        //            Color(.black)
        //                .frame(width: .infinity, height: 200)
        VStack{
            PracticeModeButton()
                .padding(50)
            ExamModeButton()
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
            Image(systemName: "play")
        }
        
        .foregroundColor(.white)
    }
}

struct ConfigurationButton: View {
    var body: some View {
        Button{
            print("Work")
        }label: {
            Image(systemName: "camera")
        }
        .foregroundColor(.white)
    }
    
}

struct PracticeModeButton: View {
    var body: some View {
        Button{
            print("Work")
        }label: {
            Text("Practice Mode")
            
        }
        .frame(width: 200, height: 40)
        .border(.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
    }
}

struct ExamModeButton: View {
    var body: some View {
        Button{
            print("Work")
        }label: {
            Text("Exam Mode")
            
        }
        .frame(width: 200, height: 40)
        .border(.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        
    }
}
