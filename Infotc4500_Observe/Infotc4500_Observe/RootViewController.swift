//
//  RootViewController.swift
//  Infotc4500_Observe
//
//  Created by William Smith on 3/20/18.
//  Copyright © 2018 William Smith. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let observations: [Observation] = [Observation(image: UIImage(named: "frog")!, name: "frog", color: "green", habitat: "pond", funFact: "frogs are tasty"), Observation(image: UIImage(named: "bird")!, name: "bird", color: "yes", habitat: "sky", funFact: "birds are tasty"), Observation(image: UIImage(named: "snake")!, name: "snake", color: "black on yellow", habitat: "backyard", funFact: "snakes are tasty"), Observation(image: UIImage(named: "leaf")!, name: "leaf", color: "various", habitat: "backyard", funFact: "leaf are NOT tasty"), Observation(image: UIImage(named: "bug")!, name: "ant", color: "red", habitat: "backyard", funFact: "some ants taste like bacon bits"), Observation(image: UIImage(named: "rabbit")!, name: "rabbit", color: "fluffy", habitat: "backyard", funFact: "rabbits are tasty"), Observation(image: UIImage(named: "fish")!, name: "catfish", color: "gray ish...?", habitat: "lake", funFact: "fish are tasty")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath) as! ObservationTableViewCell
        let observation = observations[indexPath.row]
        
        
        cell.observationImage?.image = observation.image
        cell.observationName?.text = observation.name
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
