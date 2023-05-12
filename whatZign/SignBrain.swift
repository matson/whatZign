//
//  signBrain.swift
//  whatZign
//
//  Created by Tracy Adams on 5/10/23.
//

import UIKit

struct SignBrain {
    
    //property:
    var sign: Zodiac?
    
    //date Ranges:
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
    mutating func calculateSign(month: Int, day: Int){
        if(month == 12 && capRange1.contains(day) || month == 1 && capRange2.contains(day) ){
            let zod = "Capricorn"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "capricorn.png"), resultsText: "The Sea Goat")
        }
        else if(month == 1 && aqRange1.contains(day) || month == 2 && aqRange2.contains(day) ){
            let zod = "Aquarius"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "aquarius.png"), resultsText: "The Water Bearer")
            
        }else if(month == 2 && pisRange1.contains(day) || month == 3 && pisRange2.contains(day)){
            let zod = "Pisces"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "pisces.png"), resultsText: "The Fish")
            
        }else if(month == 3 && ariRange1.contains(day) || month == 4 && ariRange2.contains(day)){
            let zod = "Aries"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "aries.png"), resultsText: "The Ram")
            
        }else if(month == 4 && tarRange1.contains(day) || month == 5 && tarRange2.contains(day)){
            let zod = "Taurus"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "taurus.png"), resultsText: "The Bull")
            
        }else if(month == 5 && gemRange1.contains(day) || month == 6 && gemRange2.contains(day)){
            let zod = "Gemini"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "gemini.png"), resultsText: "The Twins")
            
        }else if(month == 6 && canRange1.contains(day) || month == 7 && canRange2.contains(day)){
            let zod = "Cancer"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "cancer.png"), resultsText: "The Crab")
       
        }else if(month == 7 && leoRange1.contains(day) || month == 8 && leoRange2.contains(day)){
            let zod = "Leo"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "leo.png"), resultsText: "The Lion")
            
        }else if(month == 8 && virRange1.contains(day) || month == 9 && virRange2.contains(day)){
            let zod = "Virgo"
            sign = Zodiac(results: zod,  image: UIImage(imageLiteralResourceName: "virgo.png"), resultsText: "The Virgin")
            
        }else if(month == 9 && libRange1.contains(day) || month == 10 && libRange2.contains(day)){
            let zod = "Libra"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "libra.png"), resultsText: "The Scales")
            
        }else if(month == 10 && scrRange1.contains(day) || month == 11 && scrRange2.contains(day)){
            let zod = "Scorpio"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "scorpio.png"), resultsText: "The Scorpian")
        }else{
            let zod = "Sagittarius"
            sign = Zodiac(results: zod, image: UIImage(imageLiteralResourceName: "sagittarius.png"), resultsText: "The Archer")
        }
    }
    
    //returns the final sign
    //chaining and coal. example:
    func getSign()->String{
        return sign?.results ?? "Default Sign"
    }
    
    
    func getResults() -> String{
        return sign?.resultsText ?? "Default Text"
        
    }
    
    func getImage() -> UIImage{
        return sign?.image ?? UIImage(imageLiteralResourceName: "libra.png")
    }
    
    
    
}


