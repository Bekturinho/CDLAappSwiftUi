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

struct PracticeView: View {
   
    @Binding var model: PracticeModel
    @State var goToSheetIsPresented: Bool = false
    @State var sheetQuestionsNumber: String = ""
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
         
            TabBarView(isPresented: $goToSheetIsPresented)

            Spacer()
            QuestionView(questionNumber: Int(model.questionNumber) ?? 0, total: total)
                .padding()
            
            Text(model.question)
                .foregroundColor(.white)
                .padding()
            
            ForEach(model.answers,id: \.self) { answer in
                Button {
                    model.selectedAnswer = answer
                } label: {
                    QuestionCell(title: answer, isSelected: model.selectedAnswer == answer)
                        .padding()
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
    PracticeView(
        model: .constant(.init(questionNumber: "1", question: "Who is nigga?", answers: ["1.dscscs", "2.sdcscsc", "3.scscscdsc"], correctAnswer: "vdfvdfv")), total: 1,
        goForwardCallback: {}, goToCallback: {_ in }
    )
}

struct TabBarView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var isPresented: Bool
    
    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
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
                    
                } label: {
                    Text("Score")
                }
                .padding()
                
                Button {
                    isPresented = true
                } label: {
                    Text("Goto")
                }
                .padding()
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

struct QuestionView: View {
    var questionNumber: Int
    var total: Int
    
    var progressPersent: Int {
        guard total >= 1 else {
            return 0
        }
        
        return Int(Double(questionNumber)/Double(total) * 100.0)
    }
    
    var body: some View {
        HStack{
            Text("Question \(questionNumber) of \(total)")
            Spacer()
            Text("\(progressPersent)%")
        }
        .foregroundColor(.white)
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






