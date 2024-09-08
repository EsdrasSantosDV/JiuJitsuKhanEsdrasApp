//
//  MenuOption.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 07/09/24.
//

import SwiftUI

struct TabBarItemView: View {
    let tab: ETab
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(isSelected ? .blue : .gray)
            Text(tab.rawValue)
                .font(.system(size: 12))
                .foregroundColor(isSelected ? .blue : .gray)
        }
    }
}

#Preview {
    TabBarItemView(tab: ETab.calendar, isSelected: true)
}
