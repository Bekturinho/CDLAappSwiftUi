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
    @State var englishData: [PracticeModel] = [
        PracticeModel(
                questionNumber: "22",
                question: "The air compressor governor controls:",
                answers: ["1. The speed of the air compressor", "2. Air pressure applied to the brakes", "3. When air is pumped into the air tanks", "4. When the brake chambers release pressure"],
                correctAnswer: "3. When air is pumped into the air tanks"
            ),
            PracticeModel(
                questionNumber: "23",
                question: "The braking power of the spring brakes:",
                answers: ["1. Increases when the service brakes are hot", "2. Depends on the service brakes being in adjustment", "3. Is not affected by the condition of the service brakes", "4. Can only be tested by highly-trained brake service people"],
                correctAnswer: "2. Depends on the service brakes being in adjustment"
            ),
            PracticeModel(
                questionNumber: "24",
                question: "The parking or emergency brake on a heavy vehicle can only be held in position by something that cannot leak away, like:",
                answers: ["1. Fluid pressure", "2. Spring pressure", "3. Air pressure", "4. Any of the above"],
                correctAnswer: "2. Spring pressure"
            ),
            PracticeModel(
                questionNumber: "25",
                question: "A straight truck or bus air brake system should not leak at the rate of more than ___ PSI per minute with the engine off and the brakes released",
                answers: ["1. 1", "2. 2", "3. 3", "4. 4"],
                correctAnswer: "2. 2"
            ),
            PracticeModel(
                questionNumber: "26",
                question: "The tractor protection valve will close and the trailer emergency brakes will come on when there is a major leak in the _____ brake line.",
                answers: ["1. Service", "2. Parking", "3. Emergency"],
                correctAnswer: "1. Service"
            ),
            PracticeModel(
                questionNumber: "27",
                question: "When driving a set of doubles, it is necessary to close which shut-off valve in the last trailer?",
                answers: ["1. Front", "2. Middle section", "3. Back"],
                correctAnswer: "3. Back"
            ),
            PracticeModel(
                questionNumber: "28",
                question: "What gear should the tractor engine be in after you uncouple the trailer and are inspecting the trailer supports?",
                answers: ["1. Neutral", "2. Low reverse", "3. High reverse"],
                correctAnswer: "2. Low reverse"
            ),
            PracticeModel(
                questionNumber: "29",
                question: "When connecting the glad hands, press the two seals with the coupler together at what degree to each other?",
                answers: ["1. 45 degrees", "2. 90 degrees", "3. 180 degrees"],
                correctAnswer: "2. 90 degrees"
            ),
            PracticeModel(
                questionNumber: "30",
                question: "After connecting the air lines but before backing under the trailer you should:",
                answers: ["1. Pull ahead to test the glad hands connections", "2. Supply air to the trailer system, then pull out the air supply knob", "3. Make sure that the trailer brakes are off", "4. Walk around the rig to be sure that it is clean"],
                correctAnswer: "2. Supply air to the trailer system, then pull out the air supply knob"
            ),
            PracticeModel(
                questionNumber: "31",
                question: "You should not back the tractor under a trailer until the whole air system is:",
                answers: ["1. Empty", "2. At normal pressure", "3. Bled down to half the maximum pressure", "4. Between 60 and 80 PSI"],
                correctAnswer: "2. At normal pressure"
            ),
            PracticeModel(
                questionNumber: "32",
                question: "Before you back under the trailer, make sure that:",
                answers: ["1. The trailer brakes are locked", "2. The tractor protection valve is normal", "3. The air brakes are off", "4. The supply knob is in"],
                correctAnswer: "1. The trailer brakes are locked"
            ),
            PracticeModel(
                questionNumber: "33",
                question: "How should you test the tractor-semitrailer connection for security?",
                answers: ["1. Look at it carefully", "2. Rock the trailer back and forth with the trailer brakes locked", "3. Put the tractor in gear and pull ahead with a sharp jerk", "4. Pull gently forward in low gear against the locked trailer brakes then look at it carefully"],
                correctAnswer: "4. Pull gently forward in low gear against the locked trailer brakes then look at it carefully"
            ),
            PracticeModel(
                questionNumber: "34",
                question: "The front trailer supports are up and the trailer is resting on the tractor. Make sure:",
                answers: ["1. There is enough clearance between the top of the tractor tires and the nose of the trailer", "2. There is enough clearance between the tractor frame and the landing gear", "3. Neither A nor B is correct", "4. Both A and B are correct"],
                correctAnswer: "4. Both A and B are correct"
            ),
            PracticeModel(
                questionNumber: "35",
                question: "You have a major leak in the service line and you put on the brakes. Service air will escape and cause the:",
                answers: ["1. Trailer emergency brakes to come on", "2. Trailer tank pressure to be lost", "3. Tractor spring brakes to lock up", "4. Trailer’s tank pressure to go to the tractor’s system"],
                correctAnswer: "1. Trailer emergency brakes to come on"
            ),
            PracticeModel(
                questionNumber: "36",
                question: "Why should you lock the tractor hands to each other (or dummy couplers) when you are not towing a trailer?",
                answers: ["1. The air circles back, getting cleaner with each cycle", "2. The connected brake circuit becomes a backup air tank", "3. It will keep dirt or water out of the lines", "4. If you didn’t, you could never build system pressure"],
                correctAnswer: "3. It will keep dirt or water out of the lines"
            ),
            PracticeModel(
                questionNumber: "37",
                question: "When driving at night, you should:",
                answers: ["1. Look to the left side of the road when a vehicle is coming toward you", "2. Drive faster when your low beams are on", "3. Adjust your speed to keep your stopping distance within your sight distance", "4. Dim your lights within 300 feet of an oncoming vehicle"],
                correctAnswer: "3. Adjust your speed to keep your stopping distance within your sight distance"
            ),
            PracticeModel(
                questionNumber: "38",
                question: "Which of these statements about downshifting is true?",
                answers: ["1. When you downshift for a curve, you should do so before you enter the curve", "2. When you downshift for a hill, you should do so after you start down the hill", "3. When double-clutching, you should let the rpms decrease while the clutch is released and the shift lever is in neutral", "4. All of the above are true"],
                correctAnswer: "1. When you downshift for a curve, you should do so before you enter the curve"
            ),
            PracticeModel(
                questionNumber: "39",
                question: "For your safety, when setting out reflective triangles you should:",
                answers: ["1. Carry the triangle at your side", "2. Hold the triangles between yourself and oncoming traffic", "3. Keep them out of sight while you walk to the spots where you set them out", "4. Turn on your flasher"],
                correctAnswer: "2. Hold the triangles between yourself and oncoming traffic"
            ),
            PracticeModel(
                questionNumber: "40",
                question: "The hand valve should be used:",
                answers: ["1. Only with a foot brake", "2. To test the trailer brakes", "3. As a parking brake", "4. Only when the trailer is fully loaded"],
                correctAnswer: "2. To test the trailer brakes"
            ),
            PracticeModel(
                questionNumber: "41",
                question: "When should you push the brake pedal if the spring brakes are on?",
                answers: ["1. Only when driving downhill", "2. Only on a slippery road", "3. Never"],
                correctAnswer: "3. Never"
            ),
            PracticeModel(
                questionNumber: "42",
                question: "If your truck has a properly functioning dual air brake system and minimum size air tank pressure should build up from 85 to 100 PSI within how many seconds?",
                answers: ["1. 60", "2. 30", "3. 45"],
                correctAnswer: "1. 60"
            ),
            PracticeModel(
                questionNumber: "43",
                question: "In ideal conditions, a truck or bus with air brakes going at 55 mph would require stopping distance of how many feet?",
                answers: ["1. Less than 100 feet", "2. More than 300 feet", "3. From 100 to 300 feet"],
                correctAnswer: "2. More than 300 feet"
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
    
    private let firebaseService = FirebaseService()
    
    var body: some View {
        VStack {
            
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
                    
                    
                    for model in englishData{
                        firebaseService.addQuestion(model: model)
                    }
                    
                  
                    
                    
                }) {
                    Text("Send Data")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                
                
            }
            
            
            
            
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
