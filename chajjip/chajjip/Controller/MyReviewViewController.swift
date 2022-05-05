//
//  MyReviewViewController.swift
//  chajjip
//
//  Created by JunHwan Kim on 2022/03/31.
//

import UIKit

class MyReviewViewController: UIViewController {

    @IBOutlet weak var myReviewNav: UINavigationBar!
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myReviewNav.isTranslucent = false
        myReviewNav.barTintColor = .red
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
