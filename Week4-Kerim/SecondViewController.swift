//
//  SecondViewController.swift
//  Week4-Kerim
//
//  Created by Mehmet Kerim ÖZEK on 12.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    //Defining Constants and Variables
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    //Defining News Struct to Variable
    var dataSecond: News?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Prohibition of Editing on TextView
        textView.isEditable = false
        
        if let new = dataSecond {
            labelTitle.text = new.title
            textView.text = new.detail
            imageView.image = new.image
        }
        
    }
    
    //Sending Info From SecondViewController to ThirdViewController
    @IBAction func moreDetails(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        vc.urlString = dataSecond?.url
        present(vc, animated: true, completion: nil)
    }
    
    //Going to ViewController Back
    @IBAction func goBack(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
