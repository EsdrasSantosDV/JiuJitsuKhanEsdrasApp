//
//  MenuOption.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 07/09/24.
//

import SwiftUI

struct MenuOption: View {
    var iconName: String
    var title: String
    @Binding var selectedOption: ContentOption
    var targetOption: ContentOption

       var body: some View {
           Button(action: {
               selectedOption = targetOption  // Atualiza o conteúdo central
           }) {
               VStack {
                   Image(systemName: iconName)
                       .font(.system(size: 24))
                       .foregroundColor(selectedOption == targetOption ? .blue : .white)
                       .frame(width: 60, height: 60)
                       .background(Circle().fill(selectedOption == targetOption ? Color.white : Color.blue))
                   
                   Text(title)
                       .font(.caption)
                       .foregroundColor(.white)
               }
           }
       }
}

