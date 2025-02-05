//
//  PracticeView.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/5/24.
//

import SwiftUI

// 1. Дополнить init в Practice View //done
// 2. Добавить в PracticeStackViewModel метод для перехода к конктретному вопросу // done
// 3. Добавить валидацию (Обработка ошибок если номер выйдет из массива)//done
// 4.Все должно работать//done

struct StartExamView: View {
    
    @Binding var model: PracticeModel
    @State var goToSheetIsPresented: Bool = false
    @State var sheetQuestionsNumber: String = ""
    @State var isHighlightAnswer: Bool = false
    let total: Int
    let goForwardCallback: () -> Void
    let goToCallback: (String) -> Void
    
    
    init(model: Binding<PracticeModel>, total: Int, goForwardCallback: @escaping () -> Void, goToCallback: @escaping (String) -> Void) {
        self._model = model
        self.total = total
        self.goForwardCallback = goForwardCallback
        self.goToCallback = goToCallback
    }
    
    @available(iOS 16.4, *)
    var body: some View {
        VStack(alignment: .leading) {
            
            TabBarView(isPresented: $goToSheetIsPresented, goToSkip: {
                goForwardCallback()
            }
            )
            
            Spacer()
            QuestionView(timerValue: DataCenter(), questionNumber: Int(model.questionNumber) ?? 0, total: total)
                .padding()
            
            Text(model.question)
                .foregroundColor(.white)
                .padding()
            
            ForEach(model.answers, id: \.self) { answer in
                Button {
                    model.selectedAnswer = answer
                } label: {
                    QuestionCell(title: answer, isSelected: model.selectedAnswer == answer)
                        .padding(2)
                        .padding()
                        .cornerRadius(8)
                }
                
            }
            .foregroundColor(.white)
            
            Button {
                    goForwardCallback()
            } label: {
                HStack{
                    Spacer()
                    
                    Text("SUBMIT")
                    
                    Spacer()
                }
                .frame(height: 55)
                .background{
                    Color.gray
                }
                .cornerRadius(8)
                .padding()
            }
            .disabled(model.selectedAnswer == nil)
            
            Spacer()
        }
        .navigationBarHidden(true)
        .background {
            Color.black
                .ignoresSafeArea()
        }
        .sheet(isPresented: $goToSheetIsPresented) {
            VStack {
                Text("Go To Question")
                    .foregroundStyle(.white)
                    .padding()
                
                TextField("Question number", text: $sheetQuestionsNumber)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                    .foregroundStyle(Color(uiColor: .darkGray))
                    .keyboardType(.asciiCapableNumberPad)
                
                Button {
                    goToCallback(sheetQuestionsNumber)
                    
                } label: {
                    Text("OK")
                }
                Spacer()
            }
            .presentationDetents([.height(170)])
            .presentationBackground(Color(uiColor: .darkGray))
            
        }
    }
}

#Preview{
    StartExamView(
        model: .constant(.init(questionNumber: "1", question: "Who is nigga?", answers: ["1.dscscs", "2.sdcscsc", "3.scscscdsc"], correctAnswer: "vdfvdfv")), total: 1,
        goForwardCallback: {}, goToCallback: {_ in }
    )
}

struct QuestionView: View {
    @EnvironmentObject var router: Router
    @State private var remainingTimeInSeconds = 300
    @State private var timerRunning = true
    @ObservedObject var timerValue: DataCenter
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var questionNumber: Int
    var total: Int
    var body: some View {
        HStack {
            Text("Question \(questionNumber) of \(total)")
            Spacer()
            Text(timeString(from: timerValue.intData))
                .onReceive(timer) { _ in
                    if  timerValue.intData > 0 && timerRunning {
                        timerValue.intData -= 1
                    } else if timerRunning {
                        timerRunning = false
                        router.navigate(to: .result)
                        
                    }
                   
                }
        }
        .foregroundColor(.white)
    }

    func timeString(from totalSeconds: Int) -> String {
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}


struct QuestionsCell: View {
    let title: String
    var isSelected: Bool
    var body: some View {
        HStack {
            Image(systemName: isSelected ? "circle.fill" : "circle")
            Text(title)
            
        }
        
        
    }
    
}

extension StartExamView {
    struct TabBarView: View {
        @Environment(\.presentationMode) var presentationMode
        @Binding var isPresented: Bool
        private let goToSkip: () -> Void
        init(isPresented: Binding<Bool>, goToSkip: @escaping () -> Void) {
            self._isPresented = isPresented
            self.goToSkip = goToSkip
        }
        
        var body: some View {
           
            ZStack{
                HStack{
                    Button{
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrowshape.left")
                    }
                    
                    Spacer()
                    
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Skip")
                    }
                    .padding()
                }
                HStack{
                    Spacer()
                    Text("Exam")
                    Spacer()
                }
                
            }
            .foregroundColor(.white)
        }
        
    }
    
    struct QuestionsView: View {
        @EnvironmentObject var router: Router
        @State private var remainingTimeInSeconds = 300
        @State private var timerRunning = true
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        var questionNumber: Int
        var total: Int
        var body: some View {
            HStack {
                Text("Question \(questionNumber) of \(total)")
                Spacer()
                Text(timeString(from: remainingTimeInSeconds))
                    .onReceive(timer) { _ in
                        if remainingTimeInSeconds > 0 && timerRunning {
                            remainingTimeInSeconds -= 1
                        } else if timerRunning {
                            timerRunning = false
                            router.navigate(to: .result)
                            
                        }
                       
                    }
            }
            .foregroundColor(.white)
        }

        func timeString(from totalSeconds: Int) -> String {
            let minutes = totalSeconds / 60
            let seconds = totalSeconds % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
    }

    
    struct QuestionCell: View {
        let title: String
        var isSelected: Bool
        var body: some View {
            HStack {
                Image(systemName: isSelected ? "circle.fill" : "circle")
                Text(title)
                
            }
            
            
        }
        
    }
    
}




