//
//  ContactsController.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 01.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class ContactsController: TableViewController {
    
    override func setup() {
        super.setup()
        self.title = "Contacts"
    }
    
    // MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.append(contentsOf: DataProvider.shared.models())
        tableView?.reloadData()
    }
    
    //MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = dataSource[indexPath.row]
        var cell: UITableViewCell?
        let reuseId: String
        
        if let model = model as? Contacts {
            reuseId = "userCell"
            cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath)
            if let cell = cell as? ContactsCell {
                cell.model = model
            }
            
        }
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        super.tableView(tableView, didSelectRowAt: indexPath)
        
        if let model = dataSource[indexPath.row] as? Contacts,
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "userController") as? UserController {
            controller.model = model
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
