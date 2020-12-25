//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Jinglun Zhou on 2020/12/25.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text:String;
    let answer:String;
    init(q:String, a:String) {
        text = q
        answer = a
    }
    
}
