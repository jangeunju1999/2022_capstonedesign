//
//  RegisterViewController.swift
//  chajjip
//
//  Created by JunHwan Kim on 2022/03/29.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var profileImage: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func addProfileImage(_ sender: UIButton) {
        let alert = UIAlertController(title: "선택", message: "어디서 사진을 가져오시겠습니까?", preferredStyle: .actionSheet)
        let library = UIAlertAction(title: "사진앨범", style: .default) { action in
            //self.openLibrary()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressedRegister(_ sender: UIButton) {
        guard let email = self.emailTextField.text else {return}
        guard let name = self.nameTextField.text else {return}
        guard let password = self.passwordTextField.text else {return}
        let registerModel = RegisterReqModel(name: name, email: email, password: password)
        UserManager.shared.register(model: registerModel){ (isSuccess) in
            if isSuccess{
                let alert = UIAlertController(title: "성공", message: "회원가입완료", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    self.navigationController?.popViewController(animated: true)
                }
                alert.addAction(okAction)
                self.present(alert, animated: false, completion: nil)
            }else{
                print("Error")
            }
        }
        
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
