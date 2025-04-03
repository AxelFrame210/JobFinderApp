//
//  JobFinderModel.swift
//  JobFinderApp
//
//  Created by Admin on 26/3/25.
//

struct JobFinderModel {
    var users: [USer] = []
    
    init(users: [USer]) {
        self.users = users
    }
}

struct USer: Identifiable {
    var id: String
    var name: String
    var profileImage: String
    var description: String
    
}
