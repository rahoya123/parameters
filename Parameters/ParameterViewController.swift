//
//  ParameterViewController.swift
//  Parameters
//
//  Created by abderrahmane chafi on 27/09/2016.
//  Copyright © 2016 abderrahmanechafi. All rights reserved.
//

import UIKit

class ParameterViewController: UIViewController , UITableViewDataSource , UITableViewDelegate , ParameterTableviewCellDelegate {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ParametersController.sharedInstance.parameters.count
        
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
/// تمشي  لفيل ديالParametersController اتجيب العناصر اللي كاينة تما 
        let cell = tableView.dequeueReusableCellWithIdentifier("cellidentifier",forIndexPath: indexPath)as! PrametersViewCell
        let parameter = ParametersController.sharedInstance.parameters [indexPath.row]
        cell.updateWithParameter(parameter)
        cell.delegate = self
        return cell ?? UITableViewCell ()
            
        
        
        
        
        
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
        
    }
    func parameterChange(cell: PrametersViewCell, selected: Bool) {
        guard let  Parameter = cell.parameter,
            cellIndexPath = tableview.indexPathForCell(cell) else {return}
        tableview.beginUpdates()
        ParametersController.sharedInstance.updateParameter(Parameter, selected: selected)
        tableview.reloadRowsAtIndexPaths([cellIndexPath], withRowAnimation: .Automatic )
        tableview.endUpdates()
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
