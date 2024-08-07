//
//  PracticeStack.swift
//  CDLAappSwiftUi
//
//  Created by fortune cookie on 6/23/24.
//

import SwiftUI

struct PracticeStack: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: PracticeStackViewModel
    
    var body: some View {
        PracticeView(
            model: $viewModel.currentQuestion, total: viewModel.questions.count,
            goForwardCallback: {
                print("Result 1")
                viewModel.goForward {
                    // Todo - переход на экран результатов
                }
            },
            goToCallback: { text in
                if Int(text) ?? 0 > viewModel.questions.count {
                    print("ERROr")
                } else {
                    viewModel.indexOFSHeet = (Int(text) ?? 0) - 1
                    print(viewModel.questions.count)
                    viewModel.goForwardTOSheet {
                    }
                }
                
                

            }
            
            
        )
        .onAppear {
            viewModel.loadData()
            viewModel.loadDataForSheet()
            
       
        }
    }
}


