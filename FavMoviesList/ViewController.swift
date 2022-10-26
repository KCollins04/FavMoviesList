//
//  ViewController.swift
//  FavMoviesList
//
//  Created by Kelsey Collins on 10/23/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var textMovie: UITextField!
    var movies = ["Cars","Cars2","Frozen","Frozen2","Smile","Up","The Little Mermaid","Lion King","Mulan","Aladdin","Beauty and the beast ","Pinocchio","Alice in Wonderland"]
    var selectMovie = ""
    var selectInfo = ""
    var detail = ["Fun movies about Cars","Second movie about Cars","epic jurnery of winter wonderland","horror movie about","A house that can fly","Mermaid that loves perince","Movie about animals","girl name Mulan pretend to be a man","Carpet that flies","Gild who falls in love with a beast","A wooden boy who thinks he is a boy","Alice in a wonderland"]
    
    
    @IBOutlet weak var imageMovie: UIImageView!
    
    @IBOutlet weak var cellTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewMovie.dataSource = self
        tableViewMovie.delegate = self
        
    }

    
    
    @IBOutlet weak var tableViewMovie: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    //each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewMovie.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectMovie = movies[indexPath.row]
        selectInfo = detail[indexPath.row]
            performSegue(withIdentifier: "movieSegue", sender: nil)
        
    }
    
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let seg = segue.destination as! SecondViewController
        seg.mt = selectMovie
        seg.info = selectInfo
    }
    
    
    
   //Add movies
    //control drag the + bar button
    @IBAction func addMovie(_ sender: UIBarButtonItem) {
        movies.append(textMovie.text!)
            tableViewMovie.reloadData()
    }
    
    
    //delete Movie
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
    
    
}

