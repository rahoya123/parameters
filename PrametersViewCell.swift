//
//  PrametersViewCell.swift
//  Parameters
//
//  Created by abderrahmane chafi on 27/09/2016.
//  Copyright © 2016 abderrahmanechafi. All rights reserved.
//

import UIKit

class PrametersViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var switchSet: UISwitch!
    
    
    var parameter : Parameter?
    weak var delegate : ParameterTableviewCellDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateWithParameter (parameter : Parameter) {
    
    self.parameter = parameter
        photo.image = parameter.image
        label.text = parameter.name
        switchSet.on = parameter.switchset
        if parameter.switchset {
            self.backgroundColor = UIColor.cyanColor()
        }else {
        self.backgroundColor = UIColor.brownColor()
            
        
        }
        
    
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func SwitchSet(sender: UISwitch) {
        delegate?.parameterChange(self, selected: switchSet.on)
    }
}
protocol ParameterTableviewCellDelegate  : class  {
    func parameterChange(cell: PrametersViewCell , selected : Bool)
}