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
            question: "Тормоз педалы колдонгондо колдонулуучу жана бошотулуучу тормоз системасы кайсы?",
            answers: [
                "1. Автоматтык тормоз системасы",
                "2. Тормоздук басуу системасы",
                "3. Абалыштырылган тормоз системасы",
                "4. Паркинг тормоз системасы"
            ],
            correctAnswer: "2. Тормоздук басуу системасы"
        ),
        PracticeModel(
            questionNumber: "2",
            question: "Айдоочу тормоз педалын колдонгондо кайсы тормоз системасы колдонулат?",
            answers: [
                "1. Жабыштырма тормоз системасы",
                "2. Паркинг тормоз системасы",
                "3. Жүкчү тормоз системасы",
                "4. Өздүк тормоз системасы"
            ],
            correctAnswer: "3. Жүкчү тормоз системасы"
        ),
        PracticeModel(
            questionNumber: "3",
            question: "Кайсы тормоз системасы айдоочу тормоз педалын колдонгондо колдонулат?",
            answers: [
                "1. Негизги тормоз системасы",
                "2. Паркинг тормоз системасы",
                "3. Жүк тормоз системасы",
                "4. Коопсуздук тормоз системасы"
            ],
            correctAnswer: "1. Негизги тормоз системасы"
        ),
        PracticeModel(
            questionNumber: "4",
            question: "Айдоочу тормоз педалын колдонгондо кайсы тормоз системасы иштейт?",
            answers: [
                "1. Паркинг тормоз системасы",
                "2. Коопсуздук тормоз системасы",
                "3. Негизги тормоз системасы",
                "4. Жүк тормоз системасы"
            ],
            correctAnswer: "3. Негизги тормоз системасы"
        ),
        PracticeModel(
            questionNumber: "5",
            question: "Айдоочу тормоз педалын колдонгондо кайсы тормоз системасы колдонулат?",
            answers: [
                "1. Жүк тормоз системасы",
                "2. Паркинг тормоз системасы",
                "3. Негизги тормоз системасы",
                "4. Коопсуздук тормоз системасы"
            ],
            correctAnswer: "3. Негизги тормоз системасы"
        ),
        PracticeModel(
            questionNumber: "6",
            question: "Айдоочу тормоз педалын басканда иштеген тормоз системасы кандай деп аталат?",
            answers: [
                "1. Авариялык",
                "2. Кызматтык",
                "3. Токтотмо",
                "4. Жогорудагы эч бирөө"
            ],
            correctAnswer: "2. Кызматтык"
        ),
        PracticeModel(
            questionNumber: "7",
            question: "Эгерде сиздин унааңызда спирт буулантуучу аппарат болсо, суук аба ырайында күн сайын эмне кылуу керек?",
            answers: [
                "1. Спирт деңгээлин текшерүү жана сактоо",
                "2. Жаңы бөтөлкөдөн спирт кошуу",
                "3. Спирт менен аба фильтрди тазалоо",
                "4. Майды спирттин бар-жогун текшерүү"
            ],
            correctAnswer: "1. Спирт деңгээлин текшерүү жана сактоо"
        ),
        PracticeModel(
            questionNumber: "8",
            question: "Сиздин унааңыз тез жана жылмакай тормоздолоруна кандайча ишенсе болот?",
            answers: [
                "1. Тормоздорду мезгил-мезгили менен жөндөө",
                "2. Аба түтүктөрүнөн агып чыгууну текшерүү",
                "3. Цилиндрлердин тешиктерине резина тыгындарды коюу",
                "4. Тормоздорду үзгүлтүксүз жөндөө"
            ],
            correctAnswer: "4. Тормоздорду үзгүлтүксүз жөндөө"
        ),
        PracticeModel(
            questionNumber: "9",
            question: "Эгерде сиздин унааңызда эки контурдуу тормоз системасы орнотулган болсо, минималдуу резервуар өлчөмү менен басым 85тен 100 PSIге чейин канча секундда көбөйүшү керек?",
            answers: [
                "1. 60",
                "2. 30",
                "3. 45"
            ],
            correctAnswer: "3. 45"
        ),
        PracticeModel(
            questionNumber: "10",
            question: "Идеалдуу шарттарда аба тормоздуу жүк ташуучу же автобус 55 миль/саат ылдамдыкта жүрүп жатканда, токтотуу аралыгы канча фут болушу керек?",
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
            question: "Сиздин унааңыз гидравликалык тормоздор менен жабдылган. Сиз түз жолдо баратып, тормоз педалын бассаңыз жана ал полго түшүп кетсе, кайсы билдирүү туура?",
            answers: [
                "1. Эгерде сизде автоматтык берүү болсо, ылдый түшпөшүңүз керек",
                "2. Тормоз педалын басуу басымды жогорулатышы мүмкүн, ошондо унааны токтото аласыз",
                "3. Токтотуучу тормоз да иштебейт, анткени ал ошол эле гидравликалык системанын бир бөлүгү болуп саналат",
                "4. Жогорудагылардын баары чындык"
            ],
            correctAnswer: "2. Тормоз педалын басуу басымды жогорулатышы мүмкүн, ошондо унааны токтото аласыз"
        ),
        PracticeModel(
            questionNumber: "12",
            question: "Жүрүш учурунда пружиналык тормоздорду эмне кармайт?",
            answers: [
                "1. Абаны басымы",
                "2. Пружиналык басым",
                "3. Центробеждик күч",
                "4. Болттор же кыскычтар"
            ],
            correctAnswer: "1. Абаны басымы"
        ),
        PracticeModel(
            questionNumber: "13",
            question: "Гидравликалык тормоздорго караганда аба тормоздорунун жалпы токтоо аралыгы эмнеге узунураак?",
            answers: [
                "1. Түшүнүү",
                "2. Реакция",
                "3. Тормоздун кечигиши",
                "4. Эффективдүү тормоздоо"
            ],
            correctAnswer: "3. Тормоздун кечигиши"
        ),
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
