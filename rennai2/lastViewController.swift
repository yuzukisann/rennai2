//
//  lastViewController.swift
//  rennai2
//
//  Created by 高井佑月 on 2023/08/25.
//

import UIKit

class lastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func home() {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
