//
//  ExamView.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/5/24.
//

import SwiftUI

struct ExamView: View {
    var body: some View {
        VStack{
            TabBarForExamView()
            Spacer()
            AvgScoreView()
            SliderView()
            Spacer()
            Spacer()
            Spacer()
            
        }
        .navigationBarHidden(true)
        .background{
            Color.black
                .ignoresSafeArea()
        }
        
    }
}

#Preview {
    ExamView()
}

struct TabBarForExamView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrowshape.left")
                }
                
              
                Spacer()
                
                Button{
                    
                } label: {
                    Text("Score Goto")
                }
                
            }
            HStack{
                Spacer()
                Text("Practice")
                Spacer()
            }
        }
        .foregroundColor(.white)
        
    }
}

struct AvgScoreView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("AVG SCORE")
                    .padding()
                Text("0%")
                    .padding()
                HStack{
                    Text("Attempts: 0")
                        .padding()
                    Spacer()
                    Text("Avg Time: 0")
                        .padding()
                }
                
            }
            .foregroundColor(.white)
            .background{
                Color.gray
                    .frame(width: .infinity, height: 200)
            }
            .cornerRadius(8)
        }
        .padding()
    }
}

struct SliderView: View {
    @State private var speed = 50.0
    @State private var isEditing = false
    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
           
            Text("60 minutes to complete 50 questions")
                .padding()
            
            
            Button{
                
            }label: {
                HStack {
                    Spacer()
                    Text("START EXAM")
                    Spacer()
                }
                .frame(height: 55)
                .background{
                    Color.gray
                }
                .cornerRadius(8)
                .padding()
            }
        }
        .foregroundColor(.white)
        .padding()
        
    }
}
