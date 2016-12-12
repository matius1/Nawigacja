//
//  FirstViewController.swift
//  Navigation
//
//  Created by Mateusz on 06/12/2016.
//  Copyright © 2016 Mateusz Skocz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var startPoint: UIButton!
    @IBOutlet weak var endPoint: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var miejsca = ["Biuro", "Dyrektor", "Lazienka", "Kuchnia"]
    
    var selectedButtonTag = 0
    
    @IBAction func buttonClick(_ sender: UIButton) {
        selectedButtonTag = sender.tag
        pickerView.isHidden = false
//        print(selectedButton)
        print("button \(sender.tag)")

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return miejsca.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return miejsca[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if selectedButtonTag == 1{
            startPoint.setTitle(miejsca[row], for: .normal)
            pickerView.isHidden = true

        }else if selectedButtonTag == 2{
            endPoint.setTitle(miejsca[row], for: .normal)
            pickerView.isHidden = true
        }
        
        print("\(selectedButtonTag) : \(miejsca[row]) ")
        selectedButtonTag = 0
    }
    
    
    func buttonsChange(){
        startPoint.tag = 1
        endPoint.tag = 2
        startPoint.layer.cornerRadius = 10
        endPoint.layer.cornerRadius = 10

//        startPoint.layer.borderWidth = 1
//        startPoint.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        print("Widok Nawigacja zaladowany")
        pickerView.isHidden = true
        
        buttonsChange()
        
//        let tap = UIGestureRecognizer(target: self, action: #selector(tapOccured))
//        view.addGestureRecognizer(tap)
        
    }
    
    func tapOccured(){
        print("Tapped")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

