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
    @IBOutlet private var phone: UITextView?
    @IBOutlet private var email: UITextView?
    @IBOutlet private var dataSource = [Any]()
    
    var model: Contacts?
    
    // MARK: - Setup
    override func setup() {
        super.setup()
        self.title = "Contact Detailed"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - setap text view
        phone?.delegate = self
        email?.delegate = self
        
        phone?.dataDetectorTypes = .phoneNumber
        email?.dataDetectorTypes = .all
        
        phone?.backgroundColor = .clear
        email?.backgroundColor = .clear
        
        phone?.isEditable = false
        email?.isEditable = false
        
        //MARK: - setup model
        
        if let path = model?.photo {
            photo?.sd_setImage(with: URL(string: path))
        }
        
        if let userName = model?.name {
            name?.text = userName
        } else {
            name?.text = nil
        }
        
        if let userPhone = model?.phone {
            phone?.text = "Телефон: " + userPhone
        } else {
            phone?.text = nil
        }
        
        if let userEmail = model?.email {
            email?.text = "email: " + userEmail
        } else {
            email?.text = nil
        }
    }
}



