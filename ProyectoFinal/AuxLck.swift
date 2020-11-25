//
//  Aux.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class AuxLck {
    static func getFullTeamName(shortTeamName: String) -> String {
        switch shortTeamName {
        case "kt":
            return "KT Rolster"
        case "dwg":
            return "DAMWON Gaming"
        case "drx":
            return "DRX"
        case "geng":
            return "Gen.G"
        case "t1":
            return "T1"
        case "af":
            return "Afreeca Freecs"
        case "sb":
            return "Sandbox GAMING"
        case "dyn":
            return "Team Dynamics"
        case "hle":
            return "Hanwha Life Esports"
        case "sp":
            return "SeolHaeOne Prince"
        default:
            return ""
        }
    }
    
    static func getRoleName(shortRoleName: String) -> String {
        switch shortRoleName {
        case "top":
            return "TOP"
        case "jg":
            return "JUNGLE"
        case "mid":
            return "MID"
        case "bot":
            return "BOT"
        case "supp":
            return "SUPP"
        default:
            return ""
        }
    }
}

