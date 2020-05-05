//
//  Task.swift
//  Pranner
//
//  Created by Roman on 06.05.2020.
//  Copyright © 2020 DrewMyScreen. All rights reserved.
//

import UIKit

class Task {
    var name : String
    var category : String?
    var priority : String?
    var deadline : Date?
    
    init(name: String) {
        self.name = name
    }
//    init(name : String, category : String?) {
//        self.name = name
//        self.category = category
//    }
//    init(name : String, category : String?, priority : String?) {
//        self.name = name
//        self.category = category
//        self.priority = priority
//    }
//    init(name : String, category : String?, deadline : Date?) {
//        self.name = name
//        self.category = category
//        self.deadline = deadline
//    }
    init(name : String, category : String?, priority : String?, deadline : Date?) {
        self.name = name
        self.category = category
        self.priority = priority
        self.deadline = deadline
    }
}
