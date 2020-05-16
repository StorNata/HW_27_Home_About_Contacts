//
//  DataProvider.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 02.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import Foundation
class DataProvider {
    static let shared = DataProvider()
    
    private init() {
        
    }
    
    func models() -> [Any] {
        // создать модели и вернуть массив данных
        
        return [Contacts(photo: "https://scontent.fods3-1.fna.fbcdn.net/v/t1.0-9/36614103_1924163960977498_543561569104035840_n.jpg?_nc_cat=101&_nc_sid=85a577&_nc_ohc=tkB7INhdI_0AX-O_9Kk&_nc_ht=scontent.fods3-1.fna&oh=8eaa83199cc28f575e31a29f3523f230&oe=5ED04E7F",
                         name: "Сторожева Наталья",
                         phone: "",
                         email: "",
                         rez: ""),
        Contacts(photo: "https://scontent.fods3-1.fna.fbcdn.net/v/t1.0-9/36614103_1924163960977498_543561569104035840_n.jpg?_nc_cat=101&_nc_sid=85a577&_nc_ohc=tkB7INhdI_0AX-O_9Kk&_nc_ht=scontent.fods3-1.fna&oh=8eaa83199cc28f575e31a29f3523f230&oe=5ED04E7F",
        name: "Сторожева Наталья",
        phone: "444",
        email: "444",
        rez: "444"),
        Contacts(photo: "https://scontent.fods3-1.fna.fbcdn.net/v/t1.0-9/36614103_1924163960977498_543561569104035840_n.jpg?_nc_cat=101&_nc_sid=85a577&_nc_ohc=tkB7INhdI_0AX-O_9Kk&_nc_ht=scontent.fods3-1.fna&oh=8eaa83199cc28f575e31a29f3523f230&oe=5ED04E7F",
        name: "Сторожева Наталья",
        phone: "",
        email: "",
        rez: "")]
    }
}
//https://news-odessa.000webhostapp.com/foto/operniy/sitnik7.jpg
//HomePhoto(homePhoto: "https://news-odessa.000webhostapp.com/foto/operniy/sitnik7.jpg")
