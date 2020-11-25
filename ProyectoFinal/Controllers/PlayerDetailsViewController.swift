//
//  PlayerDetailsViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UIViewController {
    @IBOutlet weak var imgPlayer: UIImageView!
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lblMvpPoints: UILabel!
    @IBOutlet weak var imgRole: UIImageView!
    @IBOutlet weak var lblRole: UILabel!
    @IBOutlet weak var imgTeam: UIImageView!
    @IBOutlet weak var lblTeam: UILabel!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = player?.name
        self.imgPlayer.image = UIImage(named: (player?.img)!)
        self.lblFullName.text = player?.fullName
        self.lblMvpPoints.text = "\(player!.mvpPoints!) MVP points"
        self.imgRole.image = UIImage(named: (player?.role)!)
        self.lblRole.text = AuxLck.getRoleName(shortRoleName: (player?.role)!)
        self.imgTeam.image = UIImage(named: (player?.team)!)
        self.lblTeam.text = AuxLck.getFullTeamName(shortTeamName: (player?.team)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
