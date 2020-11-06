//
//  CalculatorButtonItem.swift
//  MyWidget
//
//  Created by 王潇 on 2020/11/6.
//

import SwiftUI

enum CalculatorButtonItem  {
    
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "/"
        case multiple = "*"
        case equal = "="
    }
    
    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
    
}


extension CalculatorButtonItem {
    
    /// 获取枚举内容
    var title: String {
        switch self {
            case .digit(let value) :
                return String(value)
            case .dot:
                return "."
            case .op(let op) :
                return op.rawValue
            case .command(let command) :
                return command.rawValue
        }
    }
    
    var size: CGSize {
        
        if case .digit(let value) = self, value == 0 {
            return CGSize(width: 88 * 2 + 8, height: 88)
        }
        
        return CGSize(width: 88, height: 88)
    }
    
    var backgroundColorName: String {
        
        switch self {
            case .digit, .dot:
                return "digitBackground"
                
            case .op:
                return "operatorBackground"
                
            case .command:
                return "commandBackground"
            
        }
        
    }
    
}

extension CalculatorButtonItem : Hashable {
    var hashValue: Int {
        return 1
    }
}
