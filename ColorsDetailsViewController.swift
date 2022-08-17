//
//  ColorsDetailsViewController.swift
//  RandomColors2
//
//  Created by Hazem Abdallah on 16/08/2022.
//

import UIKit

class ColorsDetailsViewController: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
}
