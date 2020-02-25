//
//  Horoscopo.swift
//  china
//
//  Created by user164196 on 2/20/20.
//  Copyright © 2020 Manuel Zambrana. All rights reserved.
//

import Foundation
import UIKit
enum Element {
    case wood
    case metal
    case fire
    case water
    case ground
}
enum Animal {
    
    case snake
    case horse
    case rat
    case ox
    case dragon
    case goat
    case hare
    case dog
    case pig
    case rooster
    case monkey
    case tiger
    
}
struct Horoscope {
    var sign: Animal
    var since: String
    var until: String
    var element: Element
    
    init(sign: Animal, since: String, until: String, element: Element) {
        self.sign = sign
        self.since = since
        self.until = until
        self.element = element
    }
    
    var titleHoroscope: String {
        return "You are a \(sign) of \(element)"
    }
    
    
}


let snake = Horoscope(sign: .snake, since: "06-02-1989", until: "26-01-1990", element: .ground)
let horse = Horoscope(sign: .horse, since: "27-01-1990", until: "14-02-1991", element: .metal)
let goat = Horoscope(sign: .goat, since: "15-02-1991", until: "03-02-1992", element: .metal)
let monkey = Horoscope(sign: .monkey, since: "04-02-1992", until: "22-01-1993", element: .water)
let rooster = Horoscope(sign: .rooster, since: "23-01-1993", until: "09-02-1994", element: .water)
let dog = Horoscope(sign: .dog, since: "10-02-1994", until: "30-01-1995", element: .wood)
let pig = Horoscope(sign: .pig, since: "31-01-1995", until: "18-02-1996", element: .wood)
let rat = Horoscope(sign: .rat, since: "19-02-1996", until: "07-02-1997", element: .fire)
let ox = Horoscope(sign: .ox, since: "08-02-1997", until: "27-01-1998", element: .fire)
let tiger = Horoscope(sign: .tiger, since: "28-01-1998", until: "15-02-1999", element: .ground)
let hare = Horoscope(sign: .hare, since: "16-02-1999", until: "04-02-2000", element: .ground)
let dragon = Horoscope(sign: .dragon, since: "17-02-2000", until: "23-01-2001", element: .metal)

var horoscopes = [snake, horse, goat, monkey, rooster, dog, pig, rat, ox, tiger, hare, dragon]


var dateStringFormatter = DateFormatter()

func descriptionAnimal (date: Date?) -> String {
    for horoscope in horoscopes {
        let startDateHoroscope = dateStringFormatter.date(from: horoscope.since)
        let endDateHoroscope = dateStringFormatter.date(from: horoscope.until)
        
        if startDateHoroscope?.compare(date!) == ComparisonResult.orderedAscending &&
            endDateHoroscope?.compare(date!) == ComparisonResult.orderedDescending {
            
            switch horoscope.sign {
            case .snake:
                return "You are intelligent, mysterious, dared and intuitive"
            case .hare:
                return "You are intuitive, generous, sensitive and selfish"
            case .horse:
                return "You are cordial, loyal, popular and gregarious"
            case .rat:
                return "You are decided, intelligent, witty and ambitious"
            case .ox:
                return "You are patient, courageous, conventional and reliable"
            case .dragon:
                return "You are enthusiastic, dared, winner and materialistic"
            case .goat:
                return "You are pacific, honest, creative and sincere"
            case .dog:
                return "You are loyal, reliable, moral and sensitive"
            case .pig:
                return "You are happy, sensual, enthusiastic and cheerful"
            case .rooster:
                return "You are courageous, protective, able and colorful"
            case .monkey:
                return "You are vivacious, witty, dared and funny"
            case .tiger:
                return "You are exhausting, thrilling, fast and dangerous"
                
                
            }
        }
    }
    
    return "vacio"
}



func imageAnimal (date: Date?) -> String {
    for horoscope in horoscopes {
        let startDateHoroscope = dateStringFormatter.date(from: horoscope.since)
        let endDateHoroscope = dateStringFormatter.date(from: horoscope.until)
        
        if startDateHoroscope?.compare(date!) == ComparisonResult.orderedAscending &&
            endDateHoroscope?.compare(date!) == ComparisonResult.orderedDescending {
            
            switch horoscope.sign {
            case .snake:
                return "snake"
            case .hare:
                return "hare"
            case .horse:
                return "horse"
            case .rat:
                return "rat"
            case .ox:
                return "ox"
            case .dragon:
                return "dragon"
            case .goat:
                return "goat"
            case .dog:
                return "dog"
            case .pig:
                return "pig"
            case .rooster:
                return "rooster"
            case .monkey:
                return "monkey"
            case .tiger:
                return "tiger"
                
                
            }
        }
    }
    
    return "vacio"
}


func elementAnimal (date: Date?) -> String {
    for horoscope in horoscopes {
        let startDateHoroscope = dateStringFormatter.date(from: horoscope.since)
        let endDateHoroscope = dateStringFormatter.date(from: horoscope.until)
        
        if startDateHoroscope?.compare(date!) == ComparisonResult.orderedAscending &&
            endDateHoroscope?.compare(date!) == ComparisonResult.orderedDescending {
        
        switch horoscope.element {
    case .water:
        return "water"
    case .ground:
        return "ground"
    case .wood:
        return "wood"
    case .metal:
        return "metal"
    case .fire:
        return "fire"
  
 
    }
    }
    }
    
    return "vacio"
}





func calculateHoroscope (date: Date?) -> String{
    dateStringFormatter.dateFormat = "dd-MM-yyyy"
    for horoscope in horoscopes {
        let startDateHoroscope = dateStringFormatter.date(from: horoscope.since)
        let endDateHoroscope = dateStringFormatter.date(from: horoscope.until)
        
        if startDateHoroscope?.compare(date!) == ComparisonResult.orderedAscending &&
            endDateHoroscope?.compare(date!) == ComparisonResult.orderedDescending {
            return horoscope.titleHoroscope
            
        }
    }
    return "empty"
}


