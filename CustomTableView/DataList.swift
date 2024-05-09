//
//  DataList.swift
//  CustomTableView
//
//  Created by Rezaul Islam on 9/5/24.
//

import Foundation

class DataList{
    var users : [User] = []
    
    init(){
        initUsers()
    }
    
    private func initUsers(){
        users.append(User(name: "Shakib Khan", image: "shakib", jobTitle:  "TL"))
        users.append(User(name: "Fuhad Mia", image: "fuhad"))
        users.append(User(name: "Jahid Khan", image: "jahid", jobTitle:  "Sr. UI/UX"))
        users.append(User(name: "Mahadi Mia", image: "mahadi"))
        users.append(User(name: "Minhaz Mia", image: "minhaz"))
        users.append(User(name: "Ripon Mia", image: "ripon", jobTitle:  "Backend Lead"))
        users.append(User(name: "Sami Mia", image: "sami", jobTitle:  "Web developer"))
        users.append(User(name: "Tanvir Mia", image: "tanvir"))
    }
}
