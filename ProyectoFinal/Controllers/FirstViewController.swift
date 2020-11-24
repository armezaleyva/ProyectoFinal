//
//  FirstViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var selectedTeam: Team?
    var teams: [Team] = []
    
    let reuseId = "teamCell"
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId) as! TeamTableViewCell
        let team = teams[indexPath.row]
        
        cell.lblRank.text = "\(team.rank)"
        cell.imgTeamLogo.image = UIImage(named: team.img)
        cell.lblName.text = team.name
        cell.lblScore.text = "\(team.wins)-\(team.losses)"
        
        if (team.gameDiff > 0) {
            cell.lblDiff.text = "+\(team.gameDiff)"
        }
        else if (team.gameDiff < 0) {
            cell.lblDiff.text = "\(team.gameDiff)"
        }
        else {
            cell.lblDiff.text = "0"
        }
        
        if (team.streak > 0) {
            cell.lblStreak.text = "\(team.streak)W"
        }
        else if (team.streak < 0) {
            cell.lblStreak.text = "\(abs(team.streak))L"
        }
        else {
            cell.lblStreak.text = "--"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTeam = teams[indexPath.row]
        performSegue(withIdentifier: "teamDetailsSegue", sender: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ktPlayers = [
            Player(role: "top", name: "Smeb"),
            Player(role: "jg", name: "No one"),
            Player(role: "mid", name: "Kuro"),
            Player(role: "bot", name: "Aiming"),
            Player(role: "supp", name: "TusiN"),
        ]
        let dwgPlayers = [
            Player(role: "top", name: "Nuguri"),
            Player(role: "jg", name: "Canyon"),
            Player(role: "mid", name: "Showmaker"),
            Player(role: "bot", name: "Ghost"),
            Player(role: "supp", name: "BeryL"),

        ]
        let drxPlayers = [
            Player(role: "top", name: "Doran"),
            Player(role: "jg", name: "Pyosik"),
            Player(role: "mid", name: "Chovy"),
            Player(role: "bot", name: "Deft"),
            Player(role: "supp", name: "Keria"),
        ]
        let gengPlayers = [
            Player(role: "top", name: "Rascal"),
            Player(role: "jg", name: "Clid"),
            Player(role: "mid", name: "Bdd"),
            Player(role: "bot", name: "Ruler"),
            Player(role: "supp", name: "Life"),
        ]
        let t1Players = [
            Player(role: "top", name: "Canna"),
            Player(role: "jg", name: "Cuzz"),
            Player(role: "mid", name: "Faker"),
            Player(role: "bot", name: "Teddy"),
            Player(role: "supp", name: "Effort"),
        ]
        let afPlayers = [
            Player(role: "top", name: "Kiin"),
            Player(role: "jg", name: "Spirit"),
            Player(role: "jg", name: "Dread"),
            Player(role: "mid", name: "Fly"),
            Player(role: "bot", name: "Mystic"),
            Player(role: "supp", name: "Ben"),
        ]
        let sbPlayers = [
            Player(role: "top", name: "Summit"),
            Player(role: "jg", name: "OnFleek"),
            Player(role: "mid", name: "Dove"),
            Player(role: "bot", name: "Route"),
            Player(role: "supp", name: "GorillA"),
        ]
        let dynPlayers = [
            Player(role: "top", name: "Rich"),
            Player(role: "jg", name: "Beyond"),
            Player(role: "mid", name: "Kuzan"),
            Player(role: "bot", name: "deokdam"),
            Player(role: "supp", name: "GuGer"),
        ]
        let hlePlayers = [
            Player(role: "top", name: "CuVee"),
            Player(role: "jg", name: "Haru"),
            Player(role: "mid", name: "Lava"),
            Player(role: "mid", name: "Mireu"),
            Player(role: "bot", name: "Viper"),
            Player(role: "supp", name: "Lehends"),
        ]
        let spPlayers = [
            Player(role: "top", name: "ikksu"),
            Player(role: "jg", name: "Flawless"),
            Player(role: "mid", name: "Mickey"),
            Player(role: "bot", name: "HyBriD"),
            Player(role: "supp", name: "Secret"),
            Player(role: "supp", name: "Mia"),
        ]
        
        teams.append(Team(rank: 1, name: "KT", wins: 18, losses: 0, gameDiff: 36, streak: 18, img: "kt", players: ktPlayers, teamImage: "kti"))
        teams.append(Team(rank: 2, name: "DWG", wins: 16, losses: 2, gameDiff: 29, streak: 10, img: "dwg", players: dwgPlayers, teamImage: "dwgi"))
        teams.append(Team(rank: 3, name: "DRX", wins: 15, losses: 3, gameDiff: 19, streak: -1, img: "drx", players: drxPlayers, teamImage: "drxi"))
        teams.append(Team(rank: 4, name: "GEN", wins: 14, losses: 4, gameDiff: 19, streak: 4, img: "geng", players: gengPlayers, teamImage: "gengi"))
        teams.append(Team(rank: 5, name: "T1", wins: 13, losses: 5, gameDiff: 14, streak: 1, img: "t1", players: t1Players, teamImage: "t1i"))
        teams.append(Team(rank: 6, name: "AF", wins: 10, losses: 8, gameDiff: 1, streak: -1, img: "af", players: afPlayers, teamImage: "afi"))
        teams.append(Team(rank: 7, name: "SB", wins: 7, losses: 11, gameDiff: -8, streak: 1, img: "sb", players: sbPlayers, teamImage: "sbi"))
        teams.append(Team(rank: 8, name: "DYN", wins: 5, losses: 13, gameDiff: -12, streak: -1, img: "dyn", players: dynPlayers, teamImage: "dyni"))
        teams.append(Team(rank: 9, name: "HLE", wins: 2, losses: 16, gameDiff: -26, streak: 1, img: "hle", players: hlePlayers, teamImage: "hlei"))
        teams.append(Team(rank: 10, name: "SP", wins: 1, losses: 17, gameDiff: -29, streak: -17, img: "sp", players: spPlayers, teamImage: "spi"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "teamDetailsSegue" {
            let destination = segue.destination as! TeamDetailsViewController
            destination.team = selectedTeam!
        }
    }
}

