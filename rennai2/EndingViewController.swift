//
//  EndingViewController.swift
//  rennai2
//
//  Created by 高井佑月 on 2023/07/28.
//

import UIKit

class EndingViewController: UIViewController {
    
    var koukando: Int = 0
    
    let story = Story()
    var number: Int = 0
        
    @IBOutlet var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isUserInteractionEnabled = true
        label.tag = 1
  
                if koukando >= 80 {
                    label.text = story.end100[number]
                } else if koukando >= 40 {
                    label.text = story.end50[number]
                } else {
                    label.text = story.end0[number]
                }
                
            
        
    }
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        for touch in touches {
            let tag = touch.view!.tag
                    
            switch tag {
            case 1:
                if koukando >= 80 {
                    number += 1
                    label.text = story.end100[number]
                } else if koukando >= 40 {
                    number += 1
                    label.text = story.end50[number]
                } else {
                    number += 1
                    label.text = story.end0[number]
                }
            default: print("error")
            }
                        
            }
          }

        

    }
    
   
    
    
        

        // Do any additional setup after loading the view.
    
    
    

           
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


