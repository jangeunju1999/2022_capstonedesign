//
//  MoreInfoViewController.swift
//  chajjip
//
//  Created by JunHwan Kim on 2022/04/04.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var contact: UILabel!
    @IBOutlet weak var reviewTableView: UITableView!
    @IBOutlet weak var background: UIView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    func setUp(){
        background.layer.cornerRadius = 50
        thumbnail.layer.cornerRadius = 50
    }


}
