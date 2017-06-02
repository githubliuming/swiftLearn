//
//  ViewController.swift
//  learnSwift
//
//  Created by liuming on 2017/4/11.
//  Copyright © 2017年 burning. All rights reserved.
//

import UIKit

enum Rank: Int {
    case Ace = 0
    case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
    case Jack,Queen,King
    func simpleDescription() -> String {
        
        switch self {
        case .Ace:
            return "ace";
        case .Jack:
            return "jack";
        case .Queen:
            return "queen";
        case .King :
            return "king";
        default:
           return String(self.rawValue);
        }
    }
    func compare(aRank:Rank) -> ComparisonResult {
        
        if self.rawValue > aRank.rawValue {
            return .orderedDescending;
        } else if(self.rawValue < aRank.rawValue){
            return .orderedAscending;
        } else {
        
            return .orderedSame;
        }
    }
   static func maxRawValue() -> Int {
        
        return Rank.King.rawValue;
    }
}

enum Suit :Int {
    case Spades,Hearts,Diamonds,Clubs
    func simpleDescription() -> String {
        
        switch self {
        case .Spades:
            return "spades";
        case .Clubs:
            return "clubs";
        case .Diamonds:
            return "diamonds";
        case .Hearts:
            return "hearts";
            
        }
    }
  static func maxRawValue() -> Int{
        
        return Suit.Clubs.rawValue;
    }
}

struct Card {
    
    var rank :Rank;
    var suit :Suit;
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    init(rank:Rank,suit:Suit) {
        
        self.rank = rank;
        self.suit = suit;
    }
   static func AllCard() -> [Card] {
        
        var cards:[Card] = NSMutableArray() as! [Card];
        let maxRank:Int = Rank.maxRawValue();
        let maxSuit:Int = Suit.maxRawValue();
        for i in 0...maxRank {
            
            for j in 0...maxSuit{
                let  card :Card = Card(rank: Rank(rawValue: i)!,suit: Suit(rawValue: j)!);
                cards.append(card);
                
            }
        }
        
        return cards;
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ranA = Rank.Eight;  //rankA
        let ranB = Rank.King;   //rankB
        
        let result =  ranA.compare(aRank: ranB); //比较RankA和 rankB
        
        if result == .orderedDescending {
            print("ranA > rankB");
        } else if result == .orderedAscending {
        
            print("ranA < rankB");
        } else {
            print("equal");
        }
        
        
        let vegetable  = "rad pepper";
        switch vegetable {
        case "calery":
            print("Add some raisins and make ants on a log");
            break;
        case "cucumber","watercress":
            print("that would make a good tea sandwich");
            break;
        case let x where x.hasSuffix("pepper"):
            print(" Is it a spicy\(x)?");
            break;
        default:
            print("EveryThing tastes goog in soup");
            break;
        }
        let interestingNumbers = [
            "Prime":[2,3,5,7,11,13],
            "Fibonacci":[1,1,2,3,5,8],
            "Square":[1,4,9,16,25]
        ];
        
        var (haha) = (0);
        for (kind,numbers) in interestingNumbers{
            print("kind is \(kind)");
            for number in numbers {
                
                haha = haha > number ? haha : number;
            }
        }
        
        print((haha));
        
        let cards:[Card] = Card.AllCard();
        for card in cards {
            
           print(card.simpleDescription());
        }
    }

    
    func equalRank(arank:Rank ,another :Rank) -> Bool {
        
        return (arank.rawValue == another.rawValue);
    }
    

}

