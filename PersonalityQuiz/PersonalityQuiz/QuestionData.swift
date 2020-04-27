//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Diego Espinosa on 2020-04-26.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import Foundation
import UIKit

struct Question {
    var text: String
    var type: ResponsiveType
    var answers: [Answer]
}

enum ResponsiveType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐭", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredible outgoing. You surround yourself with the people you love and enjoy activities with your friends"
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on yor own terms"
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady with the race"
        }
    }
}


var questions : [Question] = [
    
    Question(text: "Which food you like the most?", type: .single, answers: [
        Answer(text: "Steak", type: .dog),
        Answer(text: "Fish", type: .cat),
        Answer(text: "Carrots", type: .rabbit),
        Answer(text: "Corn", type: .turtle)
    ]),
    
    Question(text: "Which activities do you enjoy?", type: .multiple, answers: [
        Answer(text: "Swimming", type: .turtle),
        Answer(text: "Sleeping", type: .cat),
        Answer(text: "Cuddling", type: .rabbit),
        Answer(text: "Eating", type: .dog)
    ]),
    
    Question(text: "How much do you enjoy car rides?", type: .ranged, answers: [
        Answer(text: "I love them", type: .dog),
        Answer(text: "I dislike them", type: .cat),
        Answer(text: "I get a little nervous", type: .rabbit),
        Answer(text: "I barely notice them", type: .turtle)
    ]),
]
