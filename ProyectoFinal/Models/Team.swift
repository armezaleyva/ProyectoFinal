//
//  Team.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Team {
    var rank: Int
    var name: String
    var wins: Int
    var losses: Int
    var gameDiff: Int
    var streak: Int
    var img: String
    var players: [Player]
    var fullName: String
    var teamImage: String
    
    init(rank: Int, name: String, wins: Int, losses: Int, gameDiff: Int, streak: Int, img: String, players: [Player], fullName: String, teamImage: String) {
        self.rank = rank
        self.name = name
        self.wins = wins
        self.losses = losses
        self.gameDiff = gameDiff
        self.streak = streak
        self.img = img
        self.players = players
        self.fullName = fullName
        self.teamImage = teamImage
    }
}
