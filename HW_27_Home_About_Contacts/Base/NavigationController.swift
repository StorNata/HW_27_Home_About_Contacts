//
//  NavigationController.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 01.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.

import UIKit

class NavigationController: UINavigationController {

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.topViewController?.supportedInterfaceOrientations ?? .all
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.topViewController?.preferredStatusBarStyle ?? .`default`
    }
}
