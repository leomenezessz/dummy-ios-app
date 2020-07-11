//
//  ViewControllerLoggedUser.swift
//  dummy
//
//  Created by Leonardo da Silva Menezes on 10/07/20.
//  Copyright © 2020 Leonardo da Silva Menezes. All rights reserved.
//

import Foundation
import UIKit



class LoggedUserVC: UIViewController  {
    
    @IBOutlet weak var labelUserName: UILabel!
    var message : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUserName.text?.append(contentsOf: ", \(message)")
    }
}
