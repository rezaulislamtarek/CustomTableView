//
//  ViewController.swift
//  CustomTableView
//
//  Created by Rezaul Islam on 9/5/24.
//

import UIKit

class UserListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let users = DataList().users
    
      let tableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Engineers"
        navigationController?.navigationBar.prefersLargeTitles = true
        setUpUI()
    }

    private func setUpUI(){
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UserCell.self, forCellReuseIdentifier: "userCell")
        tableView.rowHeight = 80
    }

}

//table view
extension UserListVC{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserCell
        let user = users[indexPath.row]
        
        cell.userImage.image = UIImage(named: user.image)
        cell.nameLabel.text = user.name
        cell.jobTitle.text = user.jobTitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = users[indexPath.row]
        print(user)
        let vc = UserDetailsVC(user: user)
        navigationController?.pushViewController(vc, animated: true)
    }
     
    

}

