//
//  CellDetailViewController.swift
//  DemoTableView
//
//  Created by Baurine Huang on 2/9/16.
//  Copyright © 2016 Baurine Huang. All rights reserved.
//

import UIKit

class CellDetailViewController: UIViewController {

    @IBOutlet weak var normalLable: UILabel!
    
    var normalText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        normalLable.text = normalText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
