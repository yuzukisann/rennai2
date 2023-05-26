//
//  ViewController.swift
//  rennai2
//
//  Created by 高井佑月 on 2023/05/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var testProgressView: UIProgressView!
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var text: UILabel!

    override func viewDidLoad() {
        
        testProgressView.transform = CGAffineTransformMakeScale(1.0, 5.0)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

