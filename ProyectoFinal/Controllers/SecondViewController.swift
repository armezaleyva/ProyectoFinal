//
//  SecondViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var selectedPlayer: Player?
    var players: [Player] = []
    
    let reuseId = "playerCell"
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId) as! MVPPlayerTableViewCell
        let player = players[indexPath.row]
        
        cell.lblRank.text = "\(player.mvpRank!)"
        cell.imgTeam.image = UIImage(named: player.team!)
        cell.lblName.text = player.name
        cell.lblPoints.text = "\(player.mvpPoints!)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPlayer = players[indexPath.row]
        performSegue(withIdentifier: "playerDetailsSegue", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        players.append(Player(role: "bot", name: "Aiming", team: "kt", mvpPoints: 1600, mvpRank: 1, img: "aiming", fullName: "Kim \"Aiming\" Ha-ram"))
        players.append(Player(role: "mid", name: "Bdd", team: "geng", mvpPoints: 1300, mvpRank: 2, img: "bdd", fullName: "Gwak \"Bdd\" Bo-seong"))
        players.append(Player(role: "mid", name: "Showmaker", team: "dwg", mvpPoints: 1100, mvpRank: 3, img: "showmaker", fullName: "Heo \"Showmaker\" Su"))
        players.append(Player(role: "top", name: "Canna", team: "t1", mvpPoints: 1000, mvpRank: 4, img: "canna", fullName: "Kim \"Canna\" Chang-dong"))
        players.append(Player(role: "jg", name: "Canyon", team: "dwg", mvpPoints: 1000, mvpRank: 4, img: "canyon", fullName: "Kim \"Canyon\" Geon-bu"))
        players.append(Player(role: "mid", name: "Chovy", team: "drx", mvpPoints: 1000, mvpRank: 4, img: "chovy", fullName: "Jeong \"Chovy\" Ji-hoon"))
        players.append(Player(role: "top", name: "Rich", team: "dyn", mvpPoints: 900, mvpRank: 7, img: "rich", fullName: "Lee \"Rich\" Jae-won"))
        players.append(Player(role: "supp", name: "Keria", team: "drx", mvpPoints: 800, mvpRank: 8, img: "keria", fullName: "Ryu \"Keria\" Min-seok"))
        players.append(Player(role: "bot", name: "Ruler", team: "geng", mvpPoints: 700, mvpRank: 9, img: "ruler", fullName: "Park \"Ruler\" Jae-hyuk"))
        players.append(Player(role: "supp", name: "BeryL", team: "dwg", mvpPoints: 600, mvpRank: 10, img: "beryl", fullName: "Cho \"BeryL\" Geon-hee"))
        players.append(Player(role: "supp", name: "Doran", team: "drx", mvpPoints: 600, mvpRank: 10, img: "doran", fullName: "Choi \"Doran\" Hyeon-joon"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playerDetailsSegue" {
            let destination = segue.destination as! PlayerDetailsViewController
            destination.player = selectedPlayer!
        }
    }

}
