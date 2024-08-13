//
//  DebugView.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/29/24.
//

//textfield "Номер вопроса"
//textfield "Название вопроса"
//textfield "Ответ 1"
//textfield "Ответ 2"
//textfield "Ответ 3"
//textfield "Ответ 4"
//кнопка "Отправить в базу данных"




import SwiftUI

struct DebugView: View {
    @State var questionData: [PracticeModel] = [
        PracticeModel(
               questionNumber: "14",
               question: "Аба тормозу менен жабдылган жүк ташуучу унаада токтотуучу тормоз качан колдонулат?",
               answers: [
                   "1. Унааны көзөмөлсүз калтырганда",
                   "2. Төмөн түшүп баратканда ылдамдыкты кармап туруу үчүн",
                   "3. Мүмкүн болушунча аз",
                   "4. Сапардын алдында жана андан кийин гана"
               ],
               correctAnswer: "1. Унааны көзөмөлсүз калтырганда"
           ),
           PracticeModel(
               questionNumber: "15",
               question: "Өзгөчө кырдаалда контролдоп тормоздоо үчүн эмне кылышыңар керек?",
               answers: [
                   "1. Тормозду тез-тез жана жеңил баскыла",
                   "2. Тормозду толугу менен басып, дөңгөлөктөр кулпуланганда коё берип, кайра толугу менен баскыла",
                   "3. Дөңгөлөктөр кулпуланганга чейин катуу тормоздоңуз, андан кийин тормоздон коё бериңиз",
                   "4. Тормозду катуу басып, кол тормозду толугу менен баскыла"
               ],
               correctAnswer: "2. Тормозду толугу менен басып, дөңгөлөктөр кулпуланганда коё берип, кайра толугу менен баскыла"
           ),
           PracticeModel(
               questionNumber: "16",
               question: "Жүк ташуучу унаалардын жана автобустардын токтотуучу же авариялык тормоздору кантип кармалып турат?",
               answers: [
                   "1. Пружина басымы",
                   "2. Суюктук басымы",
                   "3. Аба басымы",
                   "4. Атмосфералык басым"
               ],
               correctAnswer: "1. Пружина басымы"
           ),
           PracticeModel(
               questionNumber: "17",
               question: "Айдоочу аба басымы төмөндөгөндө эскертүүчү белги канча PSI деңгээлинде күйөрүн көрүшү керек?",
               answers: [
                   "1. 20 PSI",
                   "2. 40 PSI",
                   "3. 60 PSI",
                   "4. 80 PSI"
               ],
               correctAnswer: "3. 60 PSI"
           )
    ]

      
    @State var questionNum: String = ""
    @State var question: String = ""
    @State private var correctAnswer = ""
    @State var answersTosplit: String = ""
    @State var modelArray: [PracticeModel] = []
    @State private var questionCountArray: [String] = []
    @State private var questionArray: [String] = []
    @State private var answersArray: [String] = []
    @State private var languageType : String = ""
    
    private let firebaseService = FirebaseService()
    
    var body: some View {
        VStack {
            Menu {
                HStack {
                    Button {
                        languageType = "questions"
                    } label: {
                        Text("ENG")
                    }
                    
                    Button {
                        languageType = "questionsKG"
                    } label: {
                        Text("RU")
                    }
                    
                    Button {
                        languageType = "questionsKG"
                    } label: {
                        Text("KG")
                    }
                }
                
            } label: {
                Text("Select Language")
            }
            Spacer()
            VStack{
                TextField("Questions Number", text: $questionNum)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Question", text: $question)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Answers", text: $answersTosplit)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                Button(action: {
                    self.answersArray = splitStringToArray(answersTosplit)
                    let model = PracticeModel(questionNumber: questionNum, question: question, answers: answersArray, correctAnswer: correctAnswer)
                    
                    modelArray.append(model)
                    
                    
                    for model in questionData{
                        firebaseService.addQuestion(model: model, language: languageType)
                    }
                    
                  
                    
                    
                }) {
                    Text("Send Data")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                
                
            }
            Spacer()
            
            
            
        }
        
        
    }
    
    
    
    
    
    func splitStringToArray(_ input: String) -> [String] {
        // Разделяем строку по запятым
        let parts = input.split(separator: ",")
        
        // Очищаем пробелы и переводим элементы в строку
        let trimmedParts = parts.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        
        return trimmedParts
    }
    
    
    
}

#Preview {
    DebugView()
}
