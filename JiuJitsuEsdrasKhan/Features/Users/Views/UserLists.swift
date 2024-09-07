//
//  UserLists.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 07/09/24.
//

import SwiftUI

struct UserLists: View {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            } else {
                List(viewModel.users) { user in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(user.name)
                            .font(.headline)
                        Text("Username: \(user.username)")
                        Text("Email: \(user.email)")
                        Text("Phone: \(user.phone)")
                        Text("Website: \(user.website)")
                        Text("Address:")
                        Text("\(user.address.suite), \(user.address.street)")
                        Text("\(user.address.city), \(user.address.zipcode)")
                        
                        // Exibir informações da empresa
                        Text("Company:")
                        Text(user.company.name)
                        Text(user.company.catchPhrase)
                            .italic()
                    }
                    .padding(.vertical)
                }
            }
        }
        .onAppear {
            viewModel.loadUsers()
        }
    }
}

#Preview {
    UserLists()
}
