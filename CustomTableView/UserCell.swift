//
//  UserCell.swift
//  CustomTableView
//
//  Created by Rezaul Islam on 9/5/24.
//

import Foundation
import UIKit
import SnapKit

class UserCell : UITableViewCell{
    
    lazy var userImage : UIImageView = {
        var img = UIImageView()
        img.layer.cornerRadius =  25
        img.layer.masksToBounds = true
        return img
    }()
        
    
    
    var nameLabel = UILabel()
    
    lazy var jobTitle : UILabel = {
       let jt = UILabel()
        jt.textColor = UIColor.black.withAlphaComponent(0.5)
        return jt
    }()
       
    
    var cellName = "userCell"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(){
        addSubview(userImage)
        
        addSubview(nameLabel)
        
        addSubview(jobTitle)
        
        userImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(16)
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.leading.equalToSuperview().inset(16)
            
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(userImage.snp.top)
            make.leading.equalTo(userImage.snp.trailing).offset(16)
            make.bottom.equalTo(jobTitle.snp.top)
        }
        
        jobTitle.snp.makeConstraints { make in
            make.leading.equalTo(nameLabel.snp.leading)
            make.top.equalTo(nameLabel.snp.bottom)
            
        }
    }
    
}

