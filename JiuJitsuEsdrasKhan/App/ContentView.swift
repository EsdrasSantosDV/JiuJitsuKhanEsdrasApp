//
//  ContentView.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 07/09/24.
//

import SwiftUI

enum ContentOption {
    case home,users
}

struct ContentView: View {
   
    var body: some View {
         VStack {
             Header(title: "Esdras Academy Khan")
             Menu()
             
         }
       
     }
        
      
}

#Preview {
    ContentView()
}
