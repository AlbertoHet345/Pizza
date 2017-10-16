//
//  SizeViewController.swift
//  Pizza
//
//  Created by Alberto Garcia on 11/10/17.
//  Copyright © 2017 Alberto Garcia. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pkSize: UIPickerView!
    @IBOutlet weak var btContinue: UIButton!
    @IBOutlet weak var btConfirm: UIButton!
    
    var size = ["Regular", "Medium", "Large"]
    var value: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pkSize.delegate = self
        self.pkSize.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return size.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return size[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            value = "Regular"
            print("Regular")
        } else if row == 1 {
            value = "Medium"
        } else {
            value = "Large"
        }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Confirm" {
            let nextView = segue.destination as! ConfirmViewController
            nextView.size = value
        } else {
            let nextView = segue.destination as! DoughViewController
            nextView.size = value
        }
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        btConfirm.isHidden = false
//        btContinue.isHidden = true
//    }
    
//    @IBAction func didTapContinue() {
//        pickerView(pkSize, didSelectRow: 0, inComponent: 0)
//    }
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
