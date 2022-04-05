//
//  WriteReviewViewController.swift
//  chajjip
//
//  Created by JunHwan Kim on 2022/04/04.
//

import UIKit
import BSImagePicker
import Photos

class WriteReviewViewController: UIViewController {
    

    @IBOutlet weak var backButton: UIButton!
    
    var selectAssests = [PHAsset]()
    let imagePicker = ImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.sizeToFit()
    }
    

    @IBAction func pressBackButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickGallery(_ sender: UIButton) {
        
        imagePicker.settings.selection.max = 5
        imagePicker.settings.fetch.assets.supportedMediaTypes = [.image]
        self.presentImagePicker(imagePicker, select: { (asset) in
            // User selected an asset. Do something with it. Perhaps begin processing/upload?
        }, deselect: { (asset) in
            // User deselected an asset. Cancel whatever you did when asset was selected.
        }, cancel: { (assets) in
            // User canceled selection.
        }, finish: { (assets) in
            for item in 0..<assets.count{
                self.selectAssests.append(assets[item])
            }
            self.convertAssestToImage()
        })
    }
    
    func convertAssestToImage(){
        if selectAssests.count != 0{
            
        }
    }
}
