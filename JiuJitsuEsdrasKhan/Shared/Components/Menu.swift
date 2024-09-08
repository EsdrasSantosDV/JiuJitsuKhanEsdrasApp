import SwiftUI



struct Menu: View {
    @State private var selectedTab: ETab = .calendar
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(ETab.allCases, id: \.self) { tab in
                createView(for: tab)
                    .tabItem {
                        TabBarItemView(tab: tab, isSelected: selectedTab == tab)
                    }
                    .tag(tab)
            }
        }
        .accentColor(.blue)
    }
    
   
    @ViewBuilder
    func createView(for tab: ETab) -> some View {
        switch tab {
        case .calendar:
            UserLists()
        case .gym:
            UserLists()
        case .notifications:
            UserLists()
        case .profile:
            UserLists()
        }
    }
}


#Preview {
    Menu()
}

