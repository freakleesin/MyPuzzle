//
//  TableViewCell.swift
//  MyPuzzle
//
//  Created by 刘润迪 on 6/5/21.
//

import UIKit

protocol TableViewCellDelegate: AnyObject{
    func didTapButton(with title: String)
}

class TableViewCell: UITableViewCell {

    weak var delegate: TableViewCellDelegate?
    static let identifier = "TableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    private var title: String = ""
    @IBOutlet var button: UIButton!
    @IBAction func didTapButton(){
        delegate?.didTapButton(with: title)
    }
    
    func configure(with title: String){
        self.title = title
        button.setTitle(title, for: .normal)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        button.setTitleColor(.link, for: .normal)
    }

    /*
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    */
}
