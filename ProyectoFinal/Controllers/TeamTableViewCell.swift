//
//  TeamTableViewCell.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    @IBOutlet weak var lblRank: UILabel!
    @IBOutlet weak var imgTeamLogo: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var lblDiff: UILabel!
    @IBOutlet weak var lblStreak: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
