//
//  AboutTextController.swift
//  HW_27_Home_About_Contacts
//
//  Created by Nataliia Storozheva on 01.05.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class AboutTextController: ViewController {
    
    @IBOutlet private var textView: UITextView?
     @IBOutlet private var scrollView: UIScrollView!
    @IBAction private func hideKeyboard() {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView?.delegate = self
        
        textView?.dataDetectorTypes = .all
        textView?.text = """
        Мой номер телефона +380637352238,
        email: storozheva@i.ua
        """
        textView?.textAlignment = .center
        textView?.backgroundColor = .clear
        textView?.isEditable = false
        
    }

}
extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
}
