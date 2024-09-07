import SwiftUI

struct Header: View {
    var title: String = "Esdras Academy Khan"
    var menuIconName: String = "line.horizontal.3"
    var menuIconSize: CGFloat = 24
    var paddingValue: CGFloat = 16
    var backgroundColor: Color = .white
    var foregroundColor: Color = .black
    var shadowColor: Color = Color.black.opacity(0.1)
    
    var onMenuTap: () -> Void
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.top)
            
            HStack {
                MenuButton(iconName: menuIconName, iconSize: menuIconSize, action: onMenuTap)
                
                Spacer()
                
                // Texto centralizado, acessível e adaptável
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(foregroundColor)
                    .accessibilityAddTraits(.isHeader)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                
                Spacer()
            }
            .padding(paddingValue)
            .frame(maxWidth: .infinity, maxHeight: 60)
        }
        .shadow(color: shadowColor, radius: 5, x: 0, y: 2)
    }
}

struct MenuButton: View {
    var iconName: String
    var iconSize: CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: iconName)
                .font(.system(size: iconSize))
                .foregroundColor(.primary)
                .frame(width: 44, height: 44)
        }
        .accessibilityLabel("Abrir menu")
    }
}

#Preview {
    VStack {
        Header(title: "Esdras Academy Khan", onMenuTap: {
            print("Abrir menu lateral")
        })
        
        Spacer()
    }
}
