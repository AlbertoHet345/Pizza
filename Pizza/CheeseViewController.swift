//
//  CheeseViewController.swift
//  Pizza
//
//  Created by Alberto Garcia on 11/10/17.
//  Copyright © 2017 Alberto Garcia. All rights reserved.
//

import UIKit

class CheeseViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pkCheese: UIPickerView!
    @IBOutlet weak var swCheese: UISwitch!
    @IBOutlet weak var lbChoose: UILabel!
    
    var cheese = ["Cheddar", "Mozarella", "Parmesano"]
    var size: String = ""
    var doughTipe: String = ""
    var value:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pkCheese.dataSource = self
        self.pkCheese.delegate = self
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
        return cheese.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cheese[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            value = "Cheddar"
        } else if row == 1 {
            value = "Mozarella"
        } else {
            value = "Parmesano"
        }
    }
    
    @IBAction func didTurnOnSwitch(sender: UISwitch) {
        if swCheese.isOn {
            pkCheese.isHidden = false
            lbChoose.isHidden = false
        } else {
            pkCheese.isHidden = true
            lbChoose.isHidden = true 
            value = "Without cheese"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! IngredientsViewController
        nextView.size = self.size
        nextView.doughTipe = self.doughTipe
        nextView.cheeseTipe = value
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
