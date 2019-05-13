//
//  MarketViewController.swift
//  CivilizationSimulator
//
//  Created by Alan Tokarsky 2019 on 5/9/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import UIKit

class MarketViewController: UIViewController {
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
    override func viewDidLoad() {
        super.viewDidLoad()

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

    
    @IBAction func BuySell(_ sender: UISegmentedControl) {
      
            switch BUYSELL.selectedSegmentIndex
            {
            case 0:
                
                Butt1.titleLabel!.text = "SUP"
                
            case 1:
                Butt1.titleLabel!.text = "SUP9"
                
            default:
                break
            }
        
    }
}
