//
//  EmojiTableViewController.swift
//  EmojiReader
//
//  Created by Kirill Suvorov on 16.08.2024.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    let objects = [
    Emoji(emoji: "😀", name: "Smile", description: "smiling face", isFavourite: false),
    Emoji(emoji: "✈️", name: "Plane", description: "", isFavourite: false),
    Emoji(emoji: "🥳", name: "Celebrate", description: "let's celebrate", isFavourite: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        self.navigationItem.title = "Emoji Reader"
         self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTableViewCell
        
        let object = objects[indexPath.row]
        cell.set(object: object)

        return cell
    }
    

}
