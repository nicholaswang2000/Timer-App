//
//  ViewController.swift
//  Nick-Alarm
//
//  Created by Nick Wang on 11/22/18.
//  Copyright © 2018 Nick Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datepicker: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
        
    }
    
    func createDatePicker(){
        
        datePicker.datePickerMode = .dateAndTime
        
        datepicker.inputView = datePicker
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClicked))
        
        toolbar.setItems([doneButton], animated: true)
        
        datepicker.inputAccessoryView = toolbar
        
    }
    
    @objc
    func doneClicked(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        datepicker.text = "\(dateFormatter.string(from: datePicker.date))"
        self.view.endEditing(true)
    }


}

