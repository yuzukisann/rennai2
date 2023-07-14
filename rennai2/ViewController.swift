//
//  ViewController.swift
//  rennai2
//
//  Created by 高井佑月 on 2023/05/19.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var number: Int = 0
    
    
    @IBOutlet var testProgressView: UIProgressView!
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var text: UILabel!
    
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
  
    let story = Story()
    
  
    
    override func viewDidLoad(){
        super.viewDidLoad()
      
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
        text.isUserInteractionEnabled = true
        text.tag = 1
        text.text = story.himariserihu[number]
        
        testProgressView.transform = CGAffineTransformMakeScale(1.0, 5.0)
        
      
     
        
    }
    
   
   
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        
        var arraycount = story.himariserihu.count - 1
        
        
        
        for touch in touches {
            let tag = touch.view!.tag
            
            switch tag {
            case 1:
                number += 1
                text.text = story.himariserihu[number]
                selectButton()
                
            default: print("error")
              
            }
        }
        
        if arraycount == number {
            self.performSegue(withIdentifier: "toending", sender: nil)
        }
       
    }
    
  
    
    
    func selectButton() {
        
        if number == 1 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[0], for: .normal )
            button2.setTitle(story.tanakahutuu[0], for: .normal )
            button3.setTitle(story.tanakahikui[0], for: .normal )
        } else if number == 2 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[1], for: .normal )
            button2.setTitle(story.tanakahutuu[1], for: .normal )
            button3.setTitle(story.tanakahikui[1], for: .normal )
        } else if number == 3 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[2], for: .normal )
            button2.setTitle(story.tanakahutuu[2], for: .normal )
            button3.setTitle(story.tanakahikui[2], for: .normal )
        } else if number == 4 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[3], for: .normal )
            button2.setTitle(story.tanakahutuu[3], for: .normal )
            button3.setTitle(story.tanakahikui[3], for: .normal )
        } else if number == 5 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[4], for: .normal )
            button2.setTitle(story.tanakahutuu[4], for: .normal )
            button3.setTitle(story.tanakahikui[4], for: .normal )
        } else if number == 6 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[5], for: .normal )
            button2.setTitle(story.tanakahutuu[5], for: .normal )
            button3.setTitle(story.tanakahikui[5], for: .normal )
        } else if number == 7 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[6], for: .normal )
            button2.setTitle(story.tanakahutuu[6], for: .normal )
            button3.setTitle(story.tanakahikui[6], for: .normal )
        } else if number == 8 {
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[7], for: .normal )
            button2.setTitle(story.tanakahutuu[7], for: .normal )
            button3.setTitle(story.tanakahikui[7], for: .normal )
        }
        
       
        
        
    }
    
}

