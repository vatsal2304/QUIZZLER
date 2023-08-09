//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Funnmedia 2 on 04/07/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Questions {
    let text : String
    let answer : String
    
    init(q : String, a : String){
        self.text = q
        self.answer = a
    }
}
//