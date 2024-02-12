//
//  DetailsScreen.swift
//  PandaApp
//
//  Created by Ярослав Шерстюк on 12/02/2024.
//

import SwiftUI

struct DetailsScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Image(.panda)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .overlay(alignment: .topTrailing) {
                        starOverlay
                    }
            }
        }
    }
    
    private var starOverlay: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "xmark.circle.fill")
                .foregroundStyle(.white, .gray)
                .font(.system(size: 32))
                .padding(20)
        }
    }
}




#Preview {
    DetailsScreen()
}
