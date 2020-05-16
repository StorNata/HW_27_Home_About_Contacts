//
//  TableViewCell.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 14.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static var reuseIdentifier: String {
            return self.className
        }
        
        static var nib: UINib? {
            return UINib(nibName: self.className, bundle: nil)
        }

    }
