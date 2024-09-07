import SwiftUI

struct Header: View {
    var title: String
    var paddingValue: CGFloat = 16
    var backgroundColor: Color = .white
    var foregroundColor: Color = .black
    var shadowColor: Color = Color.black.opacity(0.1)
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.top)
            HStack {
                Spacer()
                Text(title)
                    .font(.headline)
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

#Preview {
    VStack {
        Header(title: "Esdras Academy Khan")

        Spacer()
    }
}
