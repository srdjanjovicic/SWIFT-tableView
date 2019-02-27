//
//  ViewController.swift
//  soloLearn
//
//  Created by user151112 on 18.2.19..
//  Copyright © 2019. user151112. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var item: Item?
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let i = item {
            nameTextField.text = i.name
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let name = nameTextField.text ?? ""
            item = Item(name: name)
        }
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated: true, completion: {print("Cancelinng add item")})
        }
        else {
            navigationController!.popViewController(animated: true)
        }
        
    }
}

