//
//  Menu.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 07/09/24.
//

import SwiftUI

struct Menu: View {
    @Binding var selectedOption: ContentOption

    var body: some View {
        HStack(spacing: 40) {
            MenuOption(iconName: "house.fill", title: "Home", selectedOption: $selectedOption, targetOption: .home)
            
            MenuOption(iconName: "gearshape.fill", title: "Usuarios", selectedOption: $selectedOption, targetOption: .users)
      
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.black)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: -5)
        )
        .padding(.horizontal, 20)
        .edgesIgnoringSafeArea(.bottom)
    }
}

