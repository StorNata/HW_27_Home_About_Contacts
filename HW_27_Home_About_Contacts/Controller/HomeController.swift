//
//  HomeController.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 01.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit
import SDWebImage

class HomeController: ViewController {
    
    @IBOutlet private var photoHome: UIImageView?

    override func setup() {
        super.setup()
        self.title = "Home"

    }
       
       override func viewDidLoad() {
           super.viewDidLoad()
        
        let url = URL(string:"https://news-odessa.000webhostapp.com/foto/katerina/katerina%201.jpg")
        if let data = try? Data(contentsOf: url!)
        {
            photoHome?.image = UIImage(data: data)
        }

}
}
