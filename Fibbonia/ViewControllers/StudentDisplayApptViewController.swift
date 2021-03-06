//
//  StudentDisplayApptViewController.swift
//  Fibbonia
//
//  Created by Gurkarn Goindi on 1/May/20.
//  Copyright © 2020 Gurkarn Goindi. All rights reserved.
//

import UIKit

class StudentDisplayApptViewController: UIViewController {
    
    var currAppt: [String: Any] = ["":""]
    
    
    @IBOutlet weak var tutorName: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var onlineLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    
    @IBOutlet weak var ApptFinButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        enterParams()
        setUp()
        // Do any additional setup after loading the view.
    }
    
    func setUp() {
        Utils.styleFilledButton(ApptFinButton)
        Utils.styleHollowDeleteButton(cancelButton)
        
    }

    func enterParams() {
        tutorName.text! = currAppt["tutorFN"] as! String
        emailLabel.text! = currAppt["tutorEmail"] as! String
        onlineLabel.text! = currAppt["location"] as! String
        notesLabel.text! = currAppt["notes"] as! String
        timeLabel.text! = currAppt["time"] as! String
        classLabel.text! = currAppt["classname"] as! String
    }
    
    

}
