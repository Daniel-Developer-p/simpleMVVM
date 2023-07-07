//
//  ViewController.swift
//  simpleMVVM
//
//  Created by Даниил Тчанников on 07.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: passwordField.text ?? "")
    }
    
    @IBOutlet weak var label: UILabel!
    
    var viewModel = ViewModel()
    
    func initalState() {    label.textColor = UIColor.white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initalState()
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
    }

}

