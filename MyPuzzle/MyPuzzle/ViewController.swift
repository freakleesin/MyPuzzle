//
//  ViewController.swift
//  MyPuzzle
//
//  Created by 刘润迪 on 6/5/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    @IBOutlet var imageView: UIImageView!
    let data = ["Number Mode", "Image Mode", "EXIT"]    // Constants: the commands in the lobby
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // imageView.image = UIImage(named: "Lobby Image")
        
        table.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        table.dataSource = self
        view.backgroundColor = .systemPink
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.configure(with:data[indexPath.row])
        cell.delegate = self
        return cell
    }
}

extension ViewController: TableViewCellDelegate{
    func didTapButton(with title: String) {
        print("\(title)")                       // print out the command
        
        
        if(title == "EXIT"){                    // exit the lobby
            exit(0)
        }
        else if(title == "Number Mode"){        // Number Mode
            
        }
        else if(title == "Image Mode"){         // Image Mode
            
        }
    }
}

