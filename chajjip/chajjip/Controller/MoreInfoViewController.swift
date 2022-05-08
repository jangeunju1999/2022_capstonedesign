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
    
    var moreInfo : TouristAndRestaurant?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let safeInfo = moreInfo{
            name.text = safeInfo.name
            address.text = safeInfo.address
            contact.text = safeInfo.contact
        }
        // Do any additional setup after loading the view.
        setUp()
    }
    func setUp(){
        background.layer.cornerRadius = 50
        thumbnail.layer.cornerRadius = 50
    }


}
