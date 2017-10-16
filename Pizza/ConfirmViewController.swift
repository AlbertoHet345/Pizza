//
//  ConfirmViewController.swift
//  Pizza
//
//  Created by Alberto Garcia on 11/10/17.
//  Copyright © 2017 Alberto Garcia. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var lbSize: UILabel!
    @IBOutlet weak var lbDough: UILabel!
    @IBOutlet weak var lbCheese: UILabel!
    @IBOutlet weak var lbIngredient: UILabel!
    @IBOutlet weak var btConfirm: UIButton!
    
    var size: String = "Regular"
    var doughTipe: String = "Thin"
    var cheeseTipe: String = "Without Cheese"
    var ingredient1: String = ""
    var ingredient2: String = ""
    var ingredient3: String = ""
    var ingredient4: String = ""
    var ingredient5: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbSize.text = "\(size)"
        lbDough.text = "\(doughTipe)"
        lbCheese.text = "\(cheeseTipe)"
        lbIngredient.text = "\(ingredient1) " + "" + "\(ingredient2) " + "" + "\(ingredient3) " + "" + "\(ingredient4) " + "" + "\(ingredient5) "
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didTapConfirm(sender: UIAlertAction) {
        displayMyAlertMessage(userMessage: "Confirm your order")
    }
    
    func displayMyAlertMessage(userMessage: String) {
        let myAlert = UIAlertController(title:"Confirmation", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let yesAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: myHandler)
        let noAction = UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(yesAction)
        myAlert.addAction(noAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    func myHandler(alert: UIAlertAction){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "ViewController")
        show(viewcontroller, sender: AnyObject.self)
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
