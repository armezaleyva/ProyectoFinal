//
//  Player.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Player {
    var role: String
    var name: String
    var team: String?
    var mvpPoints: Int?
    var mvpRank: Int?
    var img: String?
    var fullName: String?
    
    init(role: String, name: String, team: String? = nil, mvpPoints: Int? = nil, mvpRank: Int? = nil, img: String? = nil, fullName: String? = nil) {
        self.role = role
        self.name = name
        self.team = team
        self.mvpPoints = mvpPoints
        self.mvpRank = mvpRank
        self.img = img
        self.fullName = fullName
    }
}
