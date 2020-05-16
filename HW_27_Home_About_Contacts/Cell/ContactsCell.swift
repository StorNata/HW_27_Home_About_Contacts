//
//  ContactsCell.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 01.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class ContactsCell: TableViewCell {

    @IBOutlet private var photo: UIImageView?
    @IBOutlet private var nameText: UILabel?
    
    var model: Contacts? {
        didSet {
            if let path = model?.photo {
                photo?.sd_setImage(with: URL(string: path))
            } else {
                photo = nil
            }
            nameText?.text = model?.name
        }
    }
}
