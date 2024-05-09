//
//  UserDetailsVC.swift
//  CustomTableView
//
//  Created by Rezaul Islam on 9/5/24.
//

import UIKit
import SnapKit

class UserDetailsVC: UIViewController {
    private var user : User
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.name
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        setUpUI()
    }
    
    private func setUpUI(){
        
        view.addSubview(userImage)
        userImage.image = UIImage(named: user.image)
        
        view.addSubview(userName)
        userName.text = user.name
        
        userImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview()

            make.height.equalTo(120)
            make.width.equalTo(120)
        }
        
        userName.snp.makeConstraints { make in
            make.top.equalTo(userImage.snp.bottom)
            make.leadingMargin.equalTo(userImage.snp.leading)
        }
        
    }

    
    
    
    
    /// ui componets
    lazy var userImage : UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 8
        img.layer.masksToBounds = true
        return img
    }()
    
    lazy var userName : UILabel = {
        let name = UILabel()
        return name
    }()
  
}

 
