//
//  FinalResultView.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 1/31/25.
//

import SwiftUI

struct FinalResultView: View {
    var body: some View {
        VStack{
            TabBarForResultView()
            .padding()
            ResultScoreView()
            Spacer()
            ReviewView()
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
    FinalResultView()
}

struct TabBarForResultView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        ZStack{
            HStack{
                Button{
                    router.navigate(to: .exam)
                } label: {
                    Image(systemName: "arrowshape.left")
                }
                
              
                Spacer()
                
                Button{
                    router.navigate(to: .exam)
                } label: {
                    Text("Exam")
                }
                
            }
            HStack{
                Spacer()
                Text("New Exam")
                Spacer()
            }
        }
        .foregroundColor(.white)
        
    }
}

struct ResultScoreView: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                VStack {
                    Text("Failed")
                        .padding()
                    Text("0%")
                        .padding()
                    Text("Passing Score: 0")
                        .padding()
                    Text("Completed in: 0")
                        .padding()
                    
                }
                Spacer()
            }
            .foregroundColor(.white)
            .background{
                Color.red
                    .frame(width: 800, height: 250)
            }
            .cornerRadius(8)
            
        }
        .padding()
    }
}

struct ReviewView: View {
    var body: some View {
        HStack {
            Text("Review")
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
        ZStack {
            HStack {
                Spacer()
                VStack {
                    Text("Failed")
                        .padding()
                    Text("0%")
                        .padding()
                    Text("Passing Score: 0")
                        .padding()
                    Text("Completed in: 0")
                       
                    HStack {
                        Spacer()
                        Button {
                            print("Work")
                        } label: {
                            Text("See Why")
                            .foregroundColor(.blue)
                        }
                    }
                    .padding()
                }
                .foregroundColor(.white)
                .background{
                    Color.gray
                        .frame(width: 800, height: 300)
                }
                .cornerRadius(8)
                
            }
            .padding()
        }
    }
}
