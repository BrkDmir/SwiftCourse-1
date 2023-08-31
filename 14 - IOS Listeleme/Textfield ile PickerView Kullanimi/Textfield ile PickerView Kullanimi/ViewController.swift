//
//  ViewController.swift
//  Textfield ile PickerView Kullanimi
//
//  Created by Berkay DEMİR on 26.08.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var textFieldUlke: UITextField!
    
    var pickerView:UIPickerView?
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Hollanda","Belçika","Fransa","İngiltere","Avusturya","İsveç","İtalya","Rusya"]
        pickerView = UIPickerView()
        pickerView?.delegate = self
        pickerView?.dataSource = self
        
        textFieldUlke.inputView = pickerView
        
        let toolBar = UIToolbar()
        toolBar.tintColor = UIColor.red
        toolBar.sizeToFit()
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        let boslukButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let iptalButton = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(ViewController.iptalTikla))
        toolBar.setItems([iptalButton,boslukButton,tamamButton], animated: true)
        
        textFieldUlke.inputAccessoryView = toolBar
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textFieldUlke.text = ulkeler[row]
    }
    @objc func tamamTikla(){
        textFieldUlke.text = ""
        textFieldUlke.placeholder = "Ülke Seç"
    }
    @objc func iptalTikla(){
        view.endEditing(true)
    }
}

