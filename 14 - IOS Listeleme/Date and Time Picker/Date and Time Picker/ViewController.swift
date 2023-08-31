//
//  ViewController.swift
//  Date and Time Picker
//
//  Created by Berkay DEMİR on 26.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldTarih: UITextField!
    @IBOutlet weak var textFieldSaat: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textFieldTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textFieldSaat.inputView = timePicker
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
        
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(self.dokunmaAlgilamaMethod))
       // view.addGestureRecognizer(dokunmaAlgilamaMethod)
    }
    
    @objc func tarihGoster(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        print(alinanTarih)
        textFieldTarih.text = alinanTarih
    }
    
    @objc func saatGoster(timePicker:UIDatePicker){
        
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        let alinanSaat = timeFormatter.string(from: timePicker.date)
        textFieldSaat.text = alinanSaat
        
    }
    
    @objc func dokunmaAlgilamaMethod(){
        
        view.endEditing(true)

    }
    
}

