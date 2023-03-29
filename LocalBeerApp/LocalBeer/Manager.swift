//
//  Manager.swift
//  LocalBeer
//
//  Created by Valery Frenkel on 12.01.22.
//

import Foundation

class Manager {
    
    static let shared = Manager()
    
    let firstBeer = Beer(name: "Guiness", price: 3, volume: 100)
    let secondBeer = Beer(name: "Heineken", price: 2, volume: 100)
    let thirdBeer = Beer(name: "Bud", price: 4, volume: 100)
    
    var firstBeerCounter = 0
    var secondBeerCounter = 0
    var thirdBeerCounter = 0
        
    var totalSumForADay = 0
    
    private init() {}
    
    func plusFirstBeer() {
                
        if firstBeerCounter  >= firstBeer.volume || (firstBeer.volume == 0) {
            print("You cannot buy more than beershop have")
        } else {
            firstBeerCounter  = firstBeerCounter  + 1
        }
        
    }
    
    func minusFirstBeer() {
        
        if firstBeerCounter == 0 {
           print("You cannot buy less than 0 amount")
        } else {
           firstBeerCounter  = firstBeerCounter  - 1
        }
        
    }
    
    func plusSecondBeer() {
        
        if secondBeerCounter >= secondBeer.volume || (secondBeer.volume == 0) {
            print("You cannot buy more than beershop have")
        } else {
            secondBeerCounter = secondBeerCounter + 1
        }
        
    }
    
    func minusSecondBeer() {
        
        if secondBeerCounter == 0 {
           print("You cannot buy less than 0 amount")
        } else {
           secondBeerCounter  = secondBeerCounter  - 1
        
        }
        
    }
    
    func plusThirdBeer() {
        
        if thirdBeerCounter >= thirdBeer.volume || (thirdBeer.volume == 0) {
            print("You cannot buy more than beershop have")
        } else {
            thirdBeerCounter = thirdBeerCounter + 1

        }
        
    }
    
    func minusThirdBeer() {
        
        if thirdBeerCounter == 0 {
           print("You cannot buy less than 0 amount")
        } else {
           thirdBeerCounter  = thirdBeerCounter  - 1
        }
        
    }
    
    func sellBeer() {

        firstBeer.volume = firstBeer.volume - firstBeerCounter

        secondBeer.volume = secondBeer.volume - secondBeerCounter

        thirdBeer.volume = thirdBeer.volume - thirdBeerCounter

        print(firstBeer.volume)
        print(secondBeer.volume)
        print(thirdBeer.volume)
        
    }
    
    func startDay() {
        
        firstBeer.volume = 100
        
        secondBeer.volume = 100
        
        thirdBeer.volume = 100
        
    }
    
    func endDay() {
        
        totalSumForADay = ((100 - firstBeer.volume) * firstBeer.price) + ((100 - secondBeer.volume) * secondBeer.price) + ((100 - thirdBeer.volume) * thirdBeer.price)
        
    }
    
}
