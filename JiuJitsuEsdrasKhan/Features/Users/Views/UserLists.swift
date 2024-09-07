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
                            .foregroundColor(.white)  // Texto branco
                        Text("Username: \(user.username)")
                            .foregroundColor(.white)  // Texto branco
                        Text("Email: \(user.email)")
                            .foregroundColor(.white)  // Texto branco
                        Text("Phone: \(user.phone)")
                            .foregroundColor(.white)  // Texto branco
                        Text("Website: \(user.website)")
                            .foregroundColor(.white)  // Texto branco
                        
                        Text("Address:")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Text("\(user.address.suite), \(user.address.street)")
                            .foregroundColor(.white)
                        Text("\(user.address.city), \(user.address.zipcode)")
                            .foregroundColor(.white)
                        
                        // Exibir informações da empresa
                        Text("Company:")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Text(user.company.name)
                            .foregroundColor(.white)
                        Text(user.company.catchPhrase)
                            .italic()
                            .foregroundColor(.white)
                    }
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(Color.black)  // Fundo preto
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                }
                .listStyle(PlainListStyle())  // Remove o fundo padrão da lista
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
