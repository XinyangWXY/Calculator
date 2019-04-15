//
//  ViewController.swift
//  BinCalc
//
//  Created by Wang, Xinyang on 11/5/18.
//  Copyright © 2018 Wang, Xinyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var performingMath = false
    var operation = 0
    var numberOnScreen = 0
    var firstNum = 0
    var theModel = CalculatorModel()
    
    @IBOutlet var display: UILabel!
    
    @IBAction func aDigitIsPressed(_ sender: UIButton){
        if performingMath == true{
            display.text = String(sender.tag - 1)
            performingMath = false
        }else{
            display.text = display.text! + String(sender.tag - 1)
            }
        }

    @IBAction func anOperationIsPressed(_ sender: UIButton){
        numberOnScreen = theModel.strToint(element: display.text!)
        if sender.tag != 10{
            if display.text != "" {
                if sender.tag == 20{
                    display.text = ""
                }else if sender.tag == 22{
                    theModel.mr()
                    let result = theModel.intTostr(givenNum: theModel.mr())
                    print(theModel.mr())
                    display.text = result
                }else  if sender.tag == 23{
                    print(theModel.mplus(num: numberOnScreen))
                }else if sender.tag == 24{
                    print(theModel.mmins(num: numberOnScreen))
                }else{
                    firstNum = theModel.strToint(element: display.text!)
                    operation = sender.tag
                    performingMath = true
                }
            }
            if sender.tag == 21{
                theModel.mc()
                print(0)
            }
        }else if sender.tag == 10{
            if operation == 11{
                let sum = theModel.add(firstNum: firstNum, secondNum: numberOnScreen)
                let result = theModel.intTostr(givenNum: sum)
                display.text = String(result)
            }else if operation == 12{
                let result = theModel.intTostr(givenNum: theModel.subtract(firstNum: firstNum, secondNum: numberOnScreen))
                display.text = result
            }else if operation == 13{
                let result = theModel.intTostr(givenNum: theModel.multiplication(firstNum: firstNum, secondNum: numberOnScreen))
                display.text = result
            }else if operation == 14{
                let result = theModel.intTostr(givenNum: theModel.division(firstNum: firstNum, secondNum: numberOnScreen))
                display.text = result
            }

        }
      
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

