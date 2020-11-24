//
//  MVPPlayerTableViewCell.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/22/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class MVPPlayerTableViewCell: UITableViewCell {
    @IBOutlet weak var lblRank: UILabel!
    @IBOutlet weak var imgTeam: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPoints: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
