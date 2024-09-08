import SwiftUI

struct Header: View {
    var title: String
    var paddingValue: CGFloat = 16
    var lightModeBackgroundColor: Color = .white
    var darkModeBackgroundColor: Color = .black
    var lightModeForegroundColor: Color = .black
    var darkModeForegroundColor: Color = .white
    var shadowColor: Color = Color.black.opacity(0.1)
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            (colorScheme == .dark ? darkModeBackgroundColor : lightModeBackgroundColor)
            
            HStack {
                Spacer()
                Text(title)
                    .font(.headline)
                    .foregroundColor(colorScheme == .dark ? darkModeForegroundColor : lightModeForegroundColor)
                    .accessibilityAddTraits(.isHeader)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                Spacer()
            }
            .padding(paddingValue)
        }
        .frame(height: 60)
        .shadow(color: shadowColor, radius: 5, x: 0, y: 2)
    }
}

#Preview {
    VStack {
        Header(title: "Esdras Academy Khan")

        Spacer()
    }
}
