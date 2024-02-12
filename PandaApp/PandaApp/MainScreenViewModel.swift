//
//  MainScreenViewModel.swift
//  PandaApp
//
//  Created by Ярослав Шерстюк on 12/02/2024.
//

import Foundation

class MainScreenViewModel: ObservableObject {
    @Published var isShowDetails: Bool = false
    @Published var isLook: Bool = false
    
    /// Look/Uplook
    func toggleLook() {
        isLook.toggle()
    }
    
    func toggleShowDetails() {
        isShowDetails.toggle()
    }
}
