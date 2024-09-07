//
//  Logo.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 07/09/24.
//

import SwiftUI

struct Logo: View {
    var imageName: String
    var size: CGFloat = 120
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
    }
}

#Preview {
    VStack(spacing: 20) {
        Logo(imageName: "logo", size: 120)
        
        Logo(imageName: "logo", size: 150)
        
        Logo(imageName: "logo", size: 80)
    }
}
