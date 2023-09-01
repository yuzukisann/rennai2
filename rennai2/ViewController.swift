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
    
    @IBOutlet var koukanndo: UIProgressView!
    
    @IBOutlet var testProgressView: UIProgressView!
    
    @IBOutlet var tatie: UIImage!
    
    @IBOutlet var name: UILabel!
    @IBOutlet var text: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    
    
    
    
    let story = Story()
    
    func arraycout() {
        
        var arraycount1 = story.himaritakai.count - 1
        var arraycount2 = story.himarihutuu.count - 1
        var arraycount3 = story.himarihikui.count - 1
        
        if arraycount1 == number {
            self.performSegue(withIdentifier: "toending", sender: nil)
        } else if arraycount2 == number {
            self.performSegue(withIdentifier: "toending", sender: nil)
        } else if arraycount3 == number {
            self.performSegue(withIdentifier: "toending", sender: nil)
        }
        
    }
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
        text.isUserInteractionEnabled = true
        text.tag = 1
        text.text = story.himaritakai[number]
        
        testProgressView.transform = CGAffineTransformMakeScale(1.0, 5.0)
        
        
        name.text = "GM"
        
    }
    
    
    
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        
        for touch in touches {
            let tag = touch.view!.tag
            
            switch tag {
            case 1:
                if number == 0 || number == 2 {
                    number += 1
                }
                text.text = story.himaritakai[number]
                selectButton()
                
            default: print("error")
                
            }
        }
        
    }
    
    @IBAction func end100() {
        number += 1
        text.text = story.himaritakai[number]
        koukanndo.setProgress(koukanndo.progress + 0.1, animated:  true)
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
        name.text = "ひまり"
        selectButton()
        arraycout()
        
    }
    
    
    @IBAction func end50() {
        number += 1
        text.text = story.himarihutuu[number]
        koukanndo.setProgress(koukanndo.progress + 0.05, animated:  true)
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
        name.text = "ひまり"
        selectButton()
        arraycout()
        
        
    }
    
    @IBAction func end0() {
        number += 1
        text.text = story.himarihikui[number]
        koukanndo.setProgress(koukanndo.progress - 0.2, animated:  true)
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
        name.text = "ひまり"
        selectButton()
        arraycout()
        
        
    }
    
    
    func selectButton() {
        if number == 1 {
                button1.alpha = 0.0
                button2.alpha = 0.0
                button3.alpha = 0.0
                
                UIView.animate(withDuration: 3.0, animations: {
                    self.button1.alpha = 1.0
                    self.button2.alpha = 1.0
                    self.button3.alpha = 1.0
                })
                button1.isHidden = false
                button2.isHidden = false
                button3.isHidden = false
                button1.setTitle(story.tanakatakai[0], for: .normal )
                button2.setTitle(story.tanakahutuu[0], for: .normal )
                button3.setTitle(story.tanakahikui[0], for: .normal )
                name.text = "ひまり"
        } else if number == 2 {
            button1.alpha = 0.0
            button2.alpha = 0.0
            button3.alpha = 0.0
            UIView.animate(withDuration: 3.0, animations: {
                self.button1.alpha = 1.0
                self.button2.alpha = 1.0
                self.button3.alpha = 1.0
            })
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[1], for: .normal )
            button2.setTitle(story.tanakahutuu[1], for: .normal )
            button3.setTitle(story.tanakahikui[1], for: .normal )
            name.text = "ひまり"
        } else if number == 3 {
            button1.alpha = 0.0
            button2.alpha = 0.0
            button3.alpha = 0.0
            UIView.animate(withDuration: 3.0, animations: {
                self.button1.alpha = 1.0
                self.button2.alpha = 1.0
                self.button3.alpha = 1.0
            })
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[2], for: .normal )
            button2.setTitle(story.tanakahutuu[2], for: .normal )
            button3.setTitle(story.tanakahikui[2], for: .normal )
            name.text = "ひまり"
        } else if number == 4 {
            button1.alpha = 0.0
            button2.alpha = 0.0
            button3.alpha = 0.0
            UIView.animate(withDuration: 3.0, animations: {
                self.button1.alpha = 1.0
                self.button2.alpha = 1.0
                self.button3.alpha = 1.0
            })
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[3], for: .normal )
            button2.setTitle(story.tanakahutuu[3], for: .normal )
            button3.setTitle(story.tanakahikui[3], for: .normal )
            name.text = "ひまり"
        } else if number == 5 {
            button1.alpha = 0.0
            button2.alpha = 0.0
            button3.alpha = 0.0
            UIView.animate(withDuration: 3.0, animations: {
                self.button1.alpha = 1.0
                self.button2.alpha = 1.0
                self.button3.alpha = 1.0
            })
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[4], for: .normal )
            button2.setTitle(story.tanakahutuu[4], for: .normal )
            button3.setTitle(story.tanakahikui[4], for: .normal )
            name.text = "ひまり"
        } else if number == 6 {
            button1.alpha = 0.0
            button2.alpha = 0.0
            button3.alpha = 0.0
            UIView.animate(withDuration: 3.0, animations: {
                self.button1.alpha = 1.0
                self.button2.alpha = 1.0
                self.button3.alpha = 1.0
            })
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[5], for: .normal )
            button2.setTitle(story.tanakahutuu[5], for: .normal )
            button3.setTitle(story.tanakahikui[5], for: .normal )
            name.text = "ひまり"
        } else if number == 7 {
            button1.alpha = 0.0
            button2.alpha = 0.0
            button3.alpha = 0.0
            UIView.animate(withDuration: 3.0, animations: {
                self.button1.alpha = 1.0
                self.button2.alpha = 1.0
                self.button3.alpha = 1.0
            })
            button1.isHidden = false
            button2.isHidden = false
            button3.isHidden = false
            button1.setTitle(story.tanakatakai[6], for: .normal )
            button2.setTitle(story.tanakahutuu[6], for: .normal )
            button3.setTitle(story.tanakahikui[6], for: .normal )
            name.text = "ひまり"
        }
        
        
    }
    
    func sleep() {
        Thread.sleep(forTimeInterval: 1.0)
        
        button1.isHidden = false
        button2.isHidden = false
        button3.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let intKoukando: Int = Int(koukanndo.progress * 100)
        
        
        
        if segue.identifier == "toending" {
            let nextView = segue.destination as! EndingViewController
            nextView.koukando = intKoukando
        }
        
    }
    
}
