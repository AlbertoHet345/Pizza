//
//  IngredientsViewController.swift
//  Pizza
//
//  Created by Alberto Garcia on 13/10/17.
//  Copyright © 2017 Alberto Garcia. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {
    @IBOutlet weak var swPepperoni: UISwitch!
    @IBOutlet weak var swJam: UISwitch!
    @IBOutlet weak var swTurkey: UISwitch!
    @IBOutlet weak var swPineapple: UISwitch!
    @IBOutlet weak var swOnion: UISwitch!
    
    var size: String = ""
    var doughTipe: String = ""
    var cheeseTipe: String = ""
    var value1: String = ""
    var value2: String = ""
    var value3: String = ""
    var value4: String = ""
    var value5: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapPepperoni(sender: UISwitch) {
        if swPepperoni.isOn {
            value1 = "Peperonni"
        } else {
            value1 = ""
        }
    }
    
    @IBAction func didTapJam(sender: UISwitch) {
        if swJam.isOn {
            value2 = "Jam"
        } else {
            value2 = ""
        }
    }
    
    @IBAction func didTapTurkey(sender: UISwitch) {
        if swTurkey.isOn {
            value3 = "Turkey"
        } else {
            value3 = ""
        }
    }
    
    @IBAction func didTapPineapple(sender: UISwitch) {
        if swPineapple.isOn {
            value4 = "Pineapple"
        } else {
            value4 = ""
        }
    }
    
    @IBAction func didTapOnio(sender: UISwitch) {
        if swOnion.isOn {
            value5 = "Onion"
        } else {
            value5 = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! ConfirmViewController
        nextView.ingredient1 = self.value1
        nextView.ingredient2 = self.value2
        nextView.ingredient3 = self.value3
        nextView.ingredient4 = self.value4
        nextView.ingredient5 = self.value5
        nextView.size = self.size
        nextView.cheeseTipe = self.cheeseTipe
        nextView.doughTipe = self.doughTipe
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
