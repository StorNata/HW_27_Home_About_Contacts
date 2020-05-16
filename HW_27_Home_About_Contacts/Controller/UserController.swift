//
//  UserController.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 14.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class UserController: ViewController {
    
    
    
    @IBOutlet private var photo: UIImageView?
    @IBOutlet private var name: UILabel?
    @IBOutlet private var phone: UILabel?
    @IBOutlet private var email: UILabel?
    
    @IBOutlet private var dataSource = [Any]()
    
    var model: Contacts?
  
    // MARK: - Setup
         override func setup() {
             super.setup()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       dataSource.append(contentsOf: DataProvider.shared.models())
        
        if let path = model?.photo {
                   photo?.sd_setImage(with: URL(string: path))
               }
               
        name?.text = model?.name
        phone?.text = model?.phone
        email?.text = model?.email
           }
       
    }
    

    


