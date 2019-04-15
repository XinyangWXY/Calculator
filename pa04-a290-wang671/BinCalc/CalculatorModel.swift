//
//  CalculatorModel.swift
//  BinCalc
//
//  Created by Wang, Xinyang on 11/5/18.
//  Copyright © 2018 Wang, Xinyang. All rights reserved.
//

import Foundation
// here is our 'singleton' class
// for the Calculator Model:
class CalculatorModel {
    var firstOperand: String
    var secondOperand: String
    var memory: Int
    
    init(){
        firstOperand = "0"
        secondOperand = "0"
        memory = 0
    }
    
    func add(firstNum: Int, secondNum: Int) -> Int{
        return (firstNum + secondNum)
    }
    
    func subtract(firstNum: Int, secondNum: Int) -> Int{
        return (firstNum - secondNum)
    }
    
    func division(firstNum: Int, secondNum: Int) -> Int{
        return firstNum / secondNum
    }
    
    func multiplication(firstNum: Int, secondNum: Int) -> Int{
        return firstNum * secondNum
    }
    
    func mc() -> Int{
        memory = 0
        return memory
    }
    
    func mr() -> Int{
        return memory
    }
    
    func mplus(num: Int) -> Int{
        memory += num
        return memory
    }
    
    func mmins(num: Int) -> Int{
        memory -= num
        return memory
    }
    
    func strToint(element: String) -> Int{
        var tempVal = 0
        var multi = 1
        let newelement = String(element.reversed())
        for char in newelement{
            tempVal += multi*Int(String(char))!
            multi *= 2
            }
        return tempVal
    }
    
    func intTostr(givenNum: Int) -> String{
        var n = 0, c = 0, bin = ""
        n = givenNum
        while (n > 0) {
            c = n%2
            n = n/2
            if c == 1{
                bin = "1" + bin
            }else{
                bin = "0" + bin
            }
        }
        return bin
    }
}

