//
//  NSObject.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 14.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import Foundation
extension NSObject {
    var className: String {
        return String(describing: self)
    }
    
    static var className: String {
        return String(describing: self)
    }
}
