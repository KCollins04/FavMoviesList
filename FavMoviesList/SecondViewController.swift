//
//  SecondViewController.swift
//  FavMoviesList
//
//  Created by KELSEY COLLINS on 10/25/22.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieInfoTextView: UITextView!
    
    var mt: String!
    var info: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitle.text = mt
        movieInfoTextView.text = info
        // Do any additional setup after loading the view.
    }
    

   

}
