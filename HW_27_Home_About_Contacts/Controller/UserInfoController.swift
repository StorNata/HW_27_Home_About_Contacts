//
//  UserInfoController.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 01.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class UserInfoController:  TableViewController {
    
    let user: Contacts
       
       init(user: Contacts) {
           self.user = user
           super.init(nibName: nil, bundle: nil)
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    // MARK: - Setup
       override func setup() {
           super.setup()
           
       }
    override func viewDidLoad() {
        super.viewDidLoad()
        
      dataSource.append(contentsOf: DataProvider.shared.models())
        tableView?.reloadData()
       
    }
    // MARK: - Setup Cell
       override func registerCells() {
           self.tableView?.register(UserInfoCell.nib,
                                    forCellReuseIdentifier: UserInfoCell.reuseIdentifier)
       }

   

}
