//
//  ViewController.swift
//  storyboardtoy
//
//  Created by Nikola Bojanic on 4/6/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.becomeFirstResponder()
    }

    func setText() {
        label.text = "Hello \(textField.text!)!"
    }

    @IBAction func button(_ sender: Any) {
        setText()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    @IBAction func enterhit(_ sender: UITextField) {
        textField.resignFirstResponder()
        setText()
    }
}

