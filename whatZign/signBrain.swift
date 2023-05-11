//
//  signBrain.swift
//  whatZign
//
//  Created by Tracy Adams on 5/10/23.
//

import Foundation

struct SignBrain {
    
    var sign: String
    
    //Date Ranges:
    let capRange1 = 22...31
    let capRange2 = 1...19
    let aqRange1 = 20...31
    let aqRange2 = 1...18
    let pisRange1 = 19...29
    let pisRange2 = 1...20
    let ariRange1 = 21...31
    let ariRange2 = 1...19
    let tarRange1 = 20...30
    let tarRange2 = 1...20
    let gemRange1 = 21...31
    let gemRange2 = 1...21
    let canRange1 = 22...30
    let canRange2 = 1...22
    let leoRange1 = 23...31
    let leoRange2 = 1...22
    let virRange1 = 23...31
    let virRange2 = 1...22
    let libRange1 = 23...30
    let libRange2 = 1...23
    let scrRange1 = 24...31
    let scrRange2 = 1...21
    //do not need the last ranges.
    
    //refactor this if possible...
    //Logic to determine the signs associated with the dates.
    mutating func calculateSign(month: Int, day: Int) -> String{
        if(month == 12 && capRange1.contains(day!) || month == 1 && capRange2.contains(day!) ){
            sign = "Capricorn"
            
        }
        else if(month == 1 && aqRange1.contains(day!) || month == 2 && aqRange2.contains(day!) ){
            sign = "Aquarius"
            
        }else if(month == 2 && pisRange1.contains(day!) || month == 3 && pisRange2.contains(day!)){
            sign = "Pisces"
            
        }else if(month == 3 && ariRange1.contains(day!) || month == 4 && ariRange2.contains(day!)){
            sign = "Aries"
            
        }else if(month == 4 && tarRange1.contains(day!) || month == 5 && tarRange2.contains(day!)){
            sign = "Taurus"
            
        }else if(month == 5 && gemRange1.contains(day!) || month == 6 && gemRange2.contains(day!)){
            sign = "Gemini"
            
        }else if(month == 6 && canRange1.contains(day!) || month == 7 && canRange2.contains(day!)){
            sign = "Cancer"
            
        }else if(month == 7 && leoRange1.contains(day!) || month == 8 && leoRange2.contains(day!)){
            sign = "Leo"
            
        }else if(month == 8 && virRange1.contains(day!) || month == 9 && virRange2.contains(day!)){
            sign = "Virgo"
            
        }else if(month == 9 && libRange1.contains(day!) || month == 10 && libRange2.contains(day!)){
            sign = "Libra"
            
        }else if(month == 10 && scrRange1.contains(day!) || month == 11 && scrRange2.contains(day!)){
            sign = "Scorpio"
            
        }else{
            
            sign = "Sagittarius"
            
        }
        return sign
    }
    
    
    
}


