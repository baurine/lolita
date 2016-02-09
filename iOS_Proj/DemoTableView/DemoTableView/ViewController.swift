//
//  ViewController.swift
//  DemoTableView
//
//  Created by Baurine Huang on 2/9/16.
//  Copyright © 2016 Baurine Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var animals = ["cat", "dog", "panda", "elephant", "goat", "pig"]
    var selectedAnimal: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource=self
        tableView.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("NormalCell", forIndexPath: indexPath)
        cell.textLabel?.text=animals[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedAnimal = animals[indexPath.row]
        
        performSegueWithIdentifier("showNormalCellDetail", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="showNormalCellDetail" {
            let viewController = segue.destinationViewController as! CellDetailViewController
            viewController.normalText = selectedAnimal
        }
    }
    
}

