//
//  ETab.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 08/09/24.
//

import Foundation

enum ETab: String, CaseIterable {
    case calendar = "Calendário"
    case gym = "Minha Academia"
    case notifications = "Notificações"
    case profile = "Perfil"
    
    var iconName: String {
        switch self {
        case .calendar:
            return "calendar"
        case .gym:
            return "dumbbell.fill"
        case .notifications:
            return "bell.fill"
        case .profile:
            return "person.circle.fill"
        }
    }
}
