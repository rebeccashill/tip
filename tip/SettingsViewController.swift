//
//  SettingsViewController.swift
//  tip
//
//  Created by Rebecca Shillingford on 12/30/20.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet var Background: UIView!
    
    
    @IBOutlet weak var playB: UIButton!
    @IBOutlet weak var gifView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Background.backgroundColor = UIColor.systemPink
        
        gifView.isHidden = true
        
        
    }
    
    @IBAction func playGif(_ sender: Any) {
        gifView.isHidden = false
        gifView.loadGif(name: "rickss")
        
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if (segue.identifier == "segueTest"){
            _ = segue.destination as! SettingsViewController;
        }
        // Pass the selected object to the new view controller.
    }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

}
