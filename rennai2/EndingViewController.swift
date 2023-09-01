import UIKit

class EndingViewController: UIViewController {
    
    var koukando: Int = 0
    
    let story = Story()
    var number: Int = 0
        
    @IBOutlet var label: UILabel!
    @IBOutlet var name: UILabel!
    
    
    

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
        
        let arraycount1 = story.end0.count - 1
        let arraycount2 = story.end50.count - 1
        let arraycount3 = story.end100.count - 1
        
        for touch in touches {
            let tag = touch.view!.tag
                    
            switch tag {
            case 1:
                if koukando >= 80 {
                    number += 1
                  
                    namemethod()
                    
                    if arraycount3 + 1 == number {
                        Thread.sleep(forTimeInterval: 1.0)
                       self.performSegue(withIdentifier: "tolast", sender: nil)
                   } else {
                       label.text = story.end100[number]
                   }
                    
                } else if koukando >= 40 {
                    number += 1
                    
                    namemethod()
                    
                    if arraycount2 + 1 == number {
                        Thread.sleep(forTimeInterval: 1.0)
                       self.performSegue(withIdentifier: "tolast", sender: nil)
                   } else {
                       label.text = story.end50[number]
                   }
                } else {
                    number += 1
                    
                    namemethod()
                    
                    if arraycount1 + 1 == number {
                        Thread.sleep(forTimeInterval: 1.0)
                        self.performSegue(withIdentifier: "tolast", sender: nil)
                    } else {
                        label.text = story.end0[number]
                    }
                }
            default: print("error")
            }
                        
            }
        
          }

    func namemethod() {
        if number % 2 == 0 {
            name.text = "ﾀﾅｶ"
        } else if number % 2 == 1 {
            name.text = "ひまり"
        }
    }


    }
