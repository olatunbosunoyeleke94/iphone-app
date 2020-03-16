//
//  ViewController.swift
//  myFirstApp
//
//  Created by Olatunbosun Oyeleke  on 05/02/2020.
//  Copyright © 2020 Olatunbosun Oyeleke . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var myFirstTextBox: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func CancelPressed(_ sender: UIButton) { print ("Recursive Result")
        
        let plainText = "Recursive Result is: "
        let maxVal = Int ( myFirstTextBox.text! ) ?? 5
        let myFactoObject = ClassFactorial()
        let myFactoOutput = myFactoObject.recursiveCalc(MaxFact: maxVal)
        myLabel.text = plainText + "\(myFactoOutput) !"
        
    }
    
    @IBAction func Addition(_ sender: UIButton) {
        print ("Addition Done")
        let plainText = "Recurs Factorial Result is: "
        let maxVal = Int (myFirstTextBox.text!) ?? 5
        let myFactoObject = ClassFactorial()
        let myFactoOutputI = myFactoObject.recursiveCalc(MaxFact:maxVal)
        let myFactoOutputR = myFactoObject.iteravtiveCalc(MaxFact: maxVal)
        let myFactoOutput = myFactoOutputR + myFactoOutputI
        
        myLabel.text = plainText + "\(myFactoOutput) !"
    }
    @IBAction func StartThread(_ sender: UIButton) {
            let mainQueue = DispatchQueue.main
             let queue = DispatchQueue(label: "ITEC30031.myqueue")
             mainQueue.async {
                self.myFirstTextBox.text = "in the Main Queue"
            }
            mainQueue.async {
                        for i in 1..<10 {
                            print("in the main queue", i)
                        }
            }
            queue.async {
                        for i in 1..<10 {
                            print("in The queue", i)
                        }
             }
            
            for i in 100..<110 {
                       print("outside the queue", i)
            }
            
             }
    
func SubmitModified(_ sender: UIButton) {
        
        print("Thanks for submitting")
        
        let plainText = "Factorial Result is: "
        let maxVal = 8
        let myFactoObject = ClassFactorial()
        let myFactoOutput = myFactoObject.iteravtiveCalc(MaxFact: maxVal)
    
        myLabel.text = plainText + "\(myFactoOutput) !"
    }
}

