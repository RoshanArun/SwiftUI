//  Calculator.swift
//  TestProject
//
//  Created by Roshan Arun on 12/14/22.
//
 
import Foundation
 
var previousNum = 0.0;
var curentCase = 0
var currentCaseHold = 0.0
 
var temphold = 0.0
var decimal = 0.0
var count = 1.0;
 
class Calculator: ObservableObject {
    @Published public var display: String = "0"
    
    init() {
        self.display = "0"
    }
    
    func set(value: String) {
        guard var num = Double(value)
        else{return}
        
        switch num {
        case 0:
            if(curentCase == 18){
                self.display = String(previousNum / 10)
                previousNum = previousNum / 10 + previousNum;
            }else{
                self.display = String(previousNum * 10)
                previousNum = previousNum * 10 + num;
            }
        
                
        //clears all numbers
        case 10:
            previousNum = 0;
            num = 0;
            curentCase = 0;
            count = 1;
            self.display = String(previousNum)
        
        //switches between negative and positive
        case 11:
            previousNum = previousNum * -1;
            self.display = String(previousNum)
        
        //shows a percentage
        case 12:
            previousNum = previousNum / 100;
            self.display = String(previousNum)
            
        //division
        case 13:
            count = 1;
            curentCase = 13
            currentCaseHold = 13
            temphold = previousNum
            previousNum = 0
 
        //multiplication
        case 14:
            count = 1;
            curentCase = 14
            currentCaseHold = 14
            temphold = previousNum
            previousNum = 0
 
        //subtration
        case 15:
            count = 1;
            curentCase = 15
            currentCaseHold = 15
            temphold = previousNum;
            previousNum = 0
            
 
        //addition
        case 16:
            count = 1;
            curentCase = 16
            currentCaseHold = 16
            temphold = previousNum;
            previousNum = 0
 
        //based on case, will add/substract/multiply/divide
        case 17:
            if(currentCaseHold == 16){
                self.display = String(temphold + previousNum)
                previousNum = previousNum + temphold;
            }else if(currentCaseHold == 15){
              
                self.display = String(temphold - previousNum)
                temphold = temphold - previousNum;
                previousNum = temphold;
            }else if(currentCaseHold == 14){
                self.display = String(temphold * previousNum)
                temphold = temphold * previousNum
                previousNum = temphold
            }
            else if(currentCaseHold == 13){
                self.display = String(temphold / previousNum)
                temphold = temphold / previousNum
                previousNum = temphold
            }
            
        //decimal point
        case 18:
            curentCase = 18;
            
        default:
            if(curentCase == 18){
                count = count * 10
                decimal = (num / (1 * count));
                self.display = String(previousNum + decimal)
                previousNum = previousNum + decimal;
            }else{
                self.display = String(previousNum * 10 + num)
                previousNum = previousNum * 10 + num;
            }
            
        }
    }
}
