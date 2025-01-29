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
            questionNumber: "1",
            question: "Ҳангоми пахш кардани педали тормоз кадом системаи тормоз фаъол мешавад?",
            answers: [
                "1. Системаи тормози автоматикӣ",
                "2. Системаи пахш кардани педали тормоз",
                "3. Системаи тормози такмилёфта",
                "4. Системаи тормози паркинг"
            ],
            correctAnswer: "2. Системаи пахш кардани педали тормоз"
        ),
        PracticeModel(
            questionNumber: "2",
            question: "Ҳангоми пахш кардани педали тормоз кадом системаи тормоз фаъол мешавад?",
            answers: [
                "1. Системаи тормози тақвиятёфта",
                "2. Системаи тормози паркинг",
                "3. Системаи тормози мошини боркаш",
                "4. Системаи тормози махсус"
            ],
            correctAnswer: "3. Системаи тормози мошини боркаш"
        ),
        PracticeModel(
            questionNumber: "3",
            question: "Ҳангоми пахш кардани педали тормоз кадом системаи тормоз фаъол мешавад?",
            answers: [
                "1. Системаи тормози асосӣ",
                "2. Системаи тормози паркинг",
                "3. Системаи тормози боркаш",
                "4. Системаи системаи бехатарӣ"
            ],
            correctAnswer: "1. Системаи тормози асосӣ"
        ),
        PracticeModel(
            questionNumber: "4",
            question: "Ҳангоми пахш кардани педали тормоз кадом системаи тормоз фаъол мешавад?",
            answers: [
                "1. Системаи тормози паркинг",
                "2. Системаи бехатарӣ",
                "3. Системаи тормози асосӣ",
                "4. Системаи тормози боркаш"
            ],
            correctAnswer: "3. Системаи тормози асосӣ"
        ),
        PracticeModel(
            questionNumber: "5",
            question: "Ҳангоми пахш кардани педали тормоз кадом системаи тормоз фаъол мешавад?",
            answers: [
                "1. Системаи тормози боркаш",
                "2. Системаи тормози паркинг",
                "3. Системаи тормози асосӣ",
                "4. Системаи системаи бехатарӣ"
            ],
            correctAnswer: "3. Системаи тормози асосӣ"
        ),
        PracticeModel(
            questionNumber: "6",
            question: "Ҳангоми пахш кардани педали тормоз кадом системаи тормоз фаъол мешавад?",
            answers: [
                "1. Системаи тормози экстренӣ",
                "2. Системаи тормози хидматрасонӣ",
                "3. Системаи тормози техникӣ",
                "4. Ҳеҷ яке"
            ],
            correctAnswer: "2. Системаи тормози хидматрасонӣ"
        ),
        PracticeModel(
            questionNumber: "7",
            question: "Агар мошини шумо дар шароити хунук системаи бухори спирт дошта бошад, бояд чӣ кор кард?",
            answers: [
                "1. Миқдори спиртро санҷида, онро нигоҳ доред",
                "2. Спиртро аз шишаи нав илова кунед",
                "3. Филтро бо спирт тоза кунед",
                "4. Спиртро барои санҷиш озмоядед"
            ],
            correctAnswer: "1. Миқдори спиртро санҷида, онро нигоҳ доред"
        ),
        PracticeModel(
            questionNumber: "8",
            question: "Чӣ тавр мошини боркаш ё автобус дар давомии тормозкунӣ тормозҳои босуръат ва мулоимро таъмин мекунад?",
            answers: [
                "1. Тормозҳоро ба таври мунтазам танзим кардан",
                "2. Фавтани пайвастагиҳои ҳаво",
                "3. Танзими хати кремний",
                "4. Тормозҳоро ба таври мунтазам танзим кардан"
            ],
            correctAnswer: "4. Тормозҳоро ба таври мунтазам танзим кардан"
        ),
        PracticeModel(
            questionNumber: "9",
            question: "Агар мошини боркаш ё автобуси шумо бо системаи тормози ду контурӣ муҷаҳаз бошад, барои баланд кардани фишор аз 85 PSI то 100 PSI чӣ миқдор вақт лозим аст?",
            answers: [
                "1. 60 сония",
                "2. 30 сония",
                "3. 45 сония"
            ],
            correctAnswer: "3. 45 сония"
        ),
        PracticeModel(
            questionNumber: "10",
            question: "Дар ҳолати идеалӣ, масофаи тормоз барои мошини боркаш ё автобуси ҳаракаткунанда бо суръати 55 мил/соат бояд чанд метр бошад?",
            answers: [
                "1. 290 фут",
                "2. 300 фут",
                "3. 200 фут",
                "4. 150 фут"
            ],
            correctAnswer: "2. 300 фут"
        ),
        PracticeModel(
            questionNumber: "11",
            question: "Агар мошини шумо бо тормози гидравликӣ муҷаҳаз шуда бошад ва шумо дар роҳе дуруст меравед, вале педали тормоз ҳангоми пахш намудан фурӯ меравад, ин чӣ маънӣ дорад?",
            answers: [
                "1. Агар мошин бо системаи идоракунии автоматикӣ муҷаҳаз бошад, педал намеравад",
                "2. Ҳангоми пахш кардани педали тормоз фишор зиёд шуда, шумо метавонед мошинро боздоред",
                "3. Тормозҳо кор намекунанд, зеро онҳо як қисми системаи гидравликӣ мебошанд",
                "4. Ҳамаи ҷавобҳо дуруст ҳастанд"
            ],
            correctAnswer: "2. Ҳангоми пахш кардани педали тормоз фишор зиёд шуда, шумо метавонед мошинро боздоред"
        ),
        PracticeModel(
            questionNumber: "12",
            question: "Чӣ тавр тормозҳои экстренӣ нигоҳ дошта мешаванд?",
            answers: [
                "1. Фишори ҳаво",
                "2. Фишори пӯсиш",
                "3. Қувваи марказӣ",
                "4. Болтҳо ё клампҳо"
            ],
            correctAnswer: "1. Фишори ҳаво"
        ),
        PracticeModel(
            questionNumber: "13",
            question: "Чаро барои системаи тормози ҳаво масофаи тормози умумӣ дар муқоиса бо системаи гидравликӣ калонтар аст?",
            answers: [
                "1. Вақти ҷавоб додан сусттар аст",
                "2. Реаксия",
                "3. Дар тормозӣ дер кардани вақт",
                "4. Ҳамвори тормозии самаранок"
            ],
            correctAnswer: "3. Дар тормозӣ дер кардани вақт"
        ),
        PracticeModel(
            questionNumber: "14",
            question: "Ки барои мошинҳои боркаш ва автобусҳо системаи тормози ҳаво истифода мешавад?",
            answers: [
                "1. Вақте ки мошин аз назорат холи мешавад",
                "2. Барои нигоҳ доштани суръат дар шароити роҳ",
                "3. Барои рафъ кардани садамаҳо",
                "4. Танҳо пеш аз сафар ё баъд аз он"
            ],
            correctAnswer: "1. Вақте ки мошин аз назорат холи мешавад"
        ),
        PracticeModel(
            questionNumber: "15",
            question: "Ҳангоми вазъияти экстренӣ чӣ тавр тормозҳоро идора кардан лозим аст?",
            answers: [
                "1. Педали тормозро як маротиба ва мулоим пахш кунед",
                "2. Педали тормозро пурра пахш кунед, вақте ки тормозҳо бозмедоранд, онро озод кунед ва боз пахш кунед",
                "3. Вақте ки тормозҳо бозмедоранд, педалро озод карда, боз пахш кунед",
                "4. Педали тормозро сахт пахш кунед ва тормози дастиро истифода баред"
            ],
            correctAnswer: "2. Педали тормозро пурра пахш кунед, вақте ки тормозҳо бозмедоранд, онро озод кунед ва боз пахш кунед"
        ),
        PracticeModel(
            questionNumber: "16",
            question: "Чӣ тавр тормозҳои экстренӣ ё тормозҳои паркинг дар мошинҳои боркаш ва автобусҳо нигоҳ дошта мешаванд?",
            answers: [
                "1. Тормози пӯшида",
                "2. Тормози механикӣ",
                "3. Тормози ҳаво",
                "4. Тормози гидравликӣ"
            ],
            correctAnswer: "3. Тормози ҳаво"
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
    
    private let firebaseService = FirebaseService(languageManager: LanguageManager())
    
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
                        languageType = "questionsRU"
                    } label: {
                        Text("RU")
                    }
                    
                    Button {
                        languageType = "questionsKG"
                    } label: {
                        Text("KG")
                    }
                    
                    Button {
                        languageType = "questionsUKR"
                    } label: {
                        Text("UKR")
                    }
                    
                    Button {
                        languageType = "questionsUZB"
                    } label: {
                        Text("UZB")
                    }
                    
                    Button {
                        languageType = "questionsTJK"
                    } label: {
                        Text("TJK")
                    }
                    
                    Button {
                        languageType = "questionsKAZ"
                    } label: {
                        Text("KAZ")
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
