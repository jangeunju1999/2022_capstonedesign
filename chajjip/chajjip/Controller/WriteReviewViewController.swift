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
    
    
    @IBOutlet weak var rating: RatingController!
    @IBOutlet weak var reviewTextField: UITextView!
    private let vm = WriteViewModel()
    var selectAssests = [PHAsset]()
    
    @IBOutlet weak var reviewImageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp(){
        //setting reviewTextField
        reviewTextField.layer.borderWidth = 1.0
        reviewTextField.layer.borderColor = UIColor.black.cgColor
        reviewTextField.layer.cornerRadius = 10
        reviewTextField.delegate = self
        reviewTextField.text = "다녀왔던 여행지나 식당에 대해 추천하는 내용이나 솔직한 리뷰를 작성해주세요. 악플성 글, 리뷰와 관련이 없다고 의심 또는 판단 되는 글은 예고없이 삭제 뢸 수 있습니다."
        reviewTextField.textColor = UIColor.lightGray
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touch")
        self.view.endEditing(true)
    }
    
    @IBAction func pressedBackButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
//    @IBAction func clickGallery(_ sender: UIButton) {
//        
//        imagePicker.settings.selection.max = 5
//        imagePicker.settings.fetch.assets.supportedMediaTypes = [.image]
//        self.presentImagePicker(imagePicker, select: { (asset) in
//            // User selected an asset. Do something with it. Perhaps begin processing/upload?
//        }, deselect: { (asset) in
//            // User deselected an asset. Cancel whatever you did when asset was selected.
//        }, cancel: { (assets) in
//            // User canceled selection.
//        }, finish: { (assets) in
//            for item in 0..<assets.count{
//                self.selectAssests.append(assets[item])
//            }
//            self.convertAssestToImage()
//        })
//    }
    
    func convertAssestToImage(){
        if selectAssests.count != 0{
            
        }
    }
}

extension WriteReviewViewController : UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray{
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty{
            textView.text = "내용을 입력해주세요."
            textView.textColor = UIColor.lightGray
        }
    }
}

//extension WriteReviewViewController : UICollectionViewDelegate, UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//
//
//}
