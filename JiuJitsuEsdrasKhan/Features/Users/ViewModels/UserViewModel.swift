//
//  UserViewModel.swift
//  JiuJitsuEsdrasKhan
//
//  Created by Esdras Santos on 07/09/24.
//
import Combine
import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private var networkService = NetworkService()
    
    func loadUsers() {
        isLoading = true
        errorMessage = nil
        
        let url = "https://jsonplaceholder.typicode.com/users"
        
        networkService.fetchData(from: url, as: [User].self) { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let users):
                    self?.users = users
                case .failure(let error):
                    self?.errorMessage = "Failed to load users: \(error)"
                }
            }
        }
    }
}
