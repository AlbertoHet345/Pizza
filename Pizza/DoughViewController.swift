//
//  DoughViewController.swift
//  Pizza
//
//  Created by Alberto Garcia on 11/10/17.
//  Copyright © 2017 Alberto Garcia. All rights reserved.
//

import UIKit

class DoughViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pkDough: UIPickerView!
    var dough = ["Thin", "Thick", "Crusty"]
    var size: String = ""
    var value: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pkDough.delegate = self
        self.pkDough.dataSource = self
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
        return dough.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dough[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            value = "Thin"
        } else if row == 1 {
            value = "Thick"
        } else {
            value = "Crusty"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! CheeseViewController
        nextView.size = self.size
        nextView.doughTipe = value
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
