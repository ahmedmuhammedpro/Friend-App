//
//  TableViewController.swift
//  Friend App
//
//  Created by ahmedpro on 3/29/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var friends = [Friend](repeating: Friend(), count: 5)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        friends[0] = Friend(friendName: "Ahmed", friendAge: "26", friendImage: "go1.jpg")
        friends[1] = Friend(friendName: "Mohamed", friendAge: "27", friendImage: "go1.jpg")
        friends[2] = Friend(friendName: "AbdElmoneam", friendAge: "28", friendImage: "go1.jpg")
        friends[3] = Friend(friendName: "Medhat", friendAge: "29", friendImage: "go1.jpg")
        friends[4] = Friend(friendName: "Nasser", friendAge: "30", friendImage: "go1.jpg")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        cell?.nameLabel.text = friends[indexPath.row].friendName
        cell?.ageLabel.text = friends[indexPath.row].friendAge
        cell?.friendImageView.image = UIImage(named: friends[indexPath.row].friendImage)
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }

}
