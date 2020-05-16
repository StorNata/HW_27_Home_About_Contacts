//
//  UserInfoCell.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 14.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class UserInfoCell: UITextView {
    
    @IBOutlet var user: UITextView?
    @IBOutlet var photo: UIImageView?
    @IBOutlet var name: UILabel?
    @IBOutlet var phone: UILabel?
    @IBOutlet var email: UILabel?
    @IBOutlet var rez: UILabel?

    
    var model: Contacts? {
        didSet {
            if let path = model?.photo {
                           photo?.sd_setImage(with: URL(string: path))
                       } else {
                           photo = nil
                       }
            name?.text = model?.name
            phone?.text = model?.phone
            email?.text = model?.email
            rez?.text = model?.rez
            
        }
    }
    
    static func create() -> UserInfoCell {
        return Bundle.main.loadNibNamed("UserInfoCell", owner: nil, options: nil)?.first as? UserInfoCell ?? UserInfoCell()
    }
    
}
