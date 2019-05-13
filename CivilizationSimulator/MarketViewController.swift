//
//  MarketViewController.swift
//  CivilizationSimulator
//
//  Created by Alan Tokarsky 2019 on 5/9/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import UIKit

class MarketViewController: UIViewController {
    var marketState = true;
    @IBOutlet weak var Butt1: UIButton!
    @IBOutlet weak var Butt2: UIButton!
    @IBOutlet weak var Butt3: UIButton!
    @IBOutlet weak var Butt4: UIButton!
    
    @IBOutlet weak var Butt5: UIButton!
    @IBOutlet weak var Butt6: UIButton!
    @IBOutlet weak var Butt7: UIButton!
    @IBOutlet weak var Butt8: UIButton!
    
    @IBOutlet weak var Butt9: UIButton!
    @IBOutlet weak var Butt10: UIButton!
    @IBOutlet weak var Butt11: UIButton!
    @IBOutlet weak var Butt12: UIButton!
    @IBOutlet weak var BUYSELL: UISegmentedControl!
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonLabelStuff()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func BUYBUTTON(_ sender: Any) {
        marketState = true
        ButtonLabelStuff()
        
    }
    @IBAction func SELLBUTTON(_ sender: Any) {
        marketState = false
        ButtonLabelStuff()
        
        
    }
    @IBAction func BUTT1ACTION(_ sender: Any) {
        print(marketState)
    }
    func ButtonLabelStuff(){
        if marketState{
            Butt1.titleLabel!.text = "BUY"
            Butt2.titleLabel!.text = "BUY"
            Butt3.titleLabel!.text = "BUY"
            Butt4.titleLabel!.text = "BUY"
            Butt5.titleLabel!.text = "BUY"
            Butt6.titleLabel!.text = "BUY"
            Butt7.titleLabel!.text = "BUY"
            Butt8.titleLabel!.text = "BUY"
            Butt9.titleLabel!.text = "BUY"
            Butt10.titleLabel!.text = "BUY"
            Butt11.titleLabel!.text = "BUY"
            Butt12.titleLabel!.text = "BUY"
            }
        if !marketState{
            Butt1.titleLabel!.text = "SELL"
            Butt2.titleLabel!.text = "SELL"
            Butt3.titleLabel!.text = "SELL"
            Butt4.titleLabel!.text = "SELL"
            Butt5.titleLabel!.text = "SELL"
            Butt6.titleLabel!.text = "SELL"
            Butt7.titleLabel!.text = "SELL"
            Butt8.titleLabel!.text = "SELL"
            Butt9.titleLabel!.text = "SELL"
            Butt10.titleLabel!.text = "SELL"
            Butt11.titleLabel!.text = "SELL"
            Butt12.titleLabel!.text = "SELL"
        }
    }
}
