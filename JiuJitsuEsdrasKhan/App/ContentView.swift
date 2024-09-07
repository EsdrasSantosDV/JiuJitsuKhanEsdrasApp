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
    @State private var selectedOption: ContentOption = .home
    
    @ViewBuilder
     func contentForSelectedOption() -> some View {
         //isso e muita gambiarra na minha visao
         //procurar pra resolver isso depois
         switch selectedOption {
         case .home:
             Home()
         case .users:
             UserLists()
         }
     }
    var body: some View {
        ZStack {
            //ESTUDAR MELHOR A QUESTAO DE EMPILHAMENTO
            //ZSTACK HSTACK E VSTACK BLZ
            //VER COMO O SWIFT COMPORTA A QUESTAO DE PAGINAS
            //PRA CONSTRUIR UMA ESTRUTURA MAIS SOLIDA
            //A LONGO PRAZO
            //PRA SOMENTE CUSPIR TELA
            //A ORGANIZACAO QUE COLOQUEI ATE AGORA
            //TA EVOLUINDO BEM
            //VAMOS VER UMA COMPONENTIZACAO MELHOR A RESPEITO
            //DE CAMPOS E VER COMO ELE FUNCIONA PRA UM CONTROL
            //VALUE ACESSOR DA VIDA
            Header(title: "Esdras Khan Academy")
            contentForSelectedOption()
            Menu(selectedOption: $selectedOption)
        }
    
       }
        
      
}

#Preview {
    ContentView()
}
