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
    
    //var data = ["cat", "dog", "panda", "elephant", "goat", "pig"]
    var selectedData: String?
    
    var data = [
        Post(photo:"photo1",avatar: "avatar", nickname: "bao1", username: "@baurine1", createtime: "2 days ago", content: "content1"),
        Post(photo:"photo2",avatar: "avatar", nickname: "bao2", username: "@baurine2", createtime: "3 days ago", content: "content2"),
        Post(photo:"photo3",avatar: "avatar", nickname: "bao3", username: "@baurine3", createtime: "4 days ago", content: "content3"),
    ]
    
    @IBAction func clearData(_ sender: AnyObject) {
        print("haha")
        
        data.removeAll()
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource=self
        tableView.delegate=self
        
        title="Feed"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "NormalCell", for: indexPath) as! PostCell
        // cell.textLabel?.text=data[indexPath.row]
        let post = data[indexPath.row]
        cell.photo.image = UIImage(named: post.photo)
        cell.avatar.image=UIImage(named: post.avatar)
        cell.nickname.text = post.nickname
        cell.username.text = post.username
        cell.createtime.text = post.createtime
        cell.content.text = post.content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedData = data[indexPath.row].nickname
        
        performSegue(withIdentifier: "showNormalCellDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="showNormalCellDetail" {
            let viewController = segue.destination as! CellDetailViewController
            viewController.normalText = selectedData
        }
    }
    
}
