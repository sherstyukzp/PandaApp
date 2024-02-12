//
//  MainScreen.swift
//  PandaApp
//
//  Created by Ярослав Шерстюк on 12/02/2024.
//

import SwiftUI


struct MainScreen: View {
    @StateObject var viewModel = MainScreenViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Image("panda")
                    .resizable()
                    .frame(width: 150, height: UIScreen.main.bounds.height * 0.3)
                
                VStack {
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.toggleLook()
                        }) {
                            Text(viewModel.isLook ? "Lock" : "Unlock")
                        }
                        .modifier(CustomButtonStyle())
                        
                        Button(action: {
                            viewModel.toggleLook()
                        }) {
                            Text("Open from top")
                        }
                        .modifier(CustomButtonStyle())
                    }
                    Spacer()
                    Button(action: {
                        viewModel.toggleShowDetails()
                    }) {
                        Text("Open full")
                    }
                    .modifier(CustomButtonStyle())
                }
                .padding(20)
            }
            .background(Color.gray)
            .navigationTitle("")
        }
        .fullScreenCover(isPresented: $viewModel.isShowDetails, content: {
            DetailsScreen()
        })
    }
}

#Preview {
    MainScreen()
}


struct CustomButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 56)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(Color.indigo, lineWidth: 3)
            )
    }
}
