//
//  ViewController.swift
//  sectionsInTableView
//
//  Created by mac on 19/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let sections = ["X-men Series", "Justice League", "Marvel Cinematic Universe"]
    let cellItems = [["X-Men (2000)", "X2 (2003)", "X-Men: The Last Stand (2006)", "X-Men Origins: Wolverine (2009)", "X-Men: First Class (2011)", "The Wolverine (2013)", "X-Men: Days of Future Past (2014)", "Deadpool (2016)", "X-Men: Apocalypse (2016)", "Logan (2017)", "Deadpool 2 (2018)", "Dark Phoenix (2019)", "The New Mutants (2020)"], ["Man of Steel (2013)", "Batman v Superman (2016)", "Suicide Squad (2016)", "Wonder Woman (2017)", "Justice League (2017)", "Aquaman (2018)", "Shazam! (2019)"], ["Iron Man (2008)", "The Incredible Hulk (2008)", "Iron Man 2 (2010)", "Thor (2011)", "Captain America: The First Avenger (2011)", "Marvel's The Avengers (2012)", "Iron Man 3 (2013)", "Thor: The Dark World (2013)", "Captain America (2014)", "Guardians of the Galaxy (2014)", "Avengers: Age of Ultron (2015)", "Ant-Man (2015)", "Captain America: Civil War (2016)", "Doctor Strange (2016)", "Guardians of the Galaxy Vol. 2 (2017)", "Spider-Man: Homecoming (2017)", "Thor: Ragnarok (2017)", "Black Panther (2018)", "Avengers: Infinity War (2018)", "Ant-Man and the Wasp (2018)", " Captain Marvel (2019)", "Avengers: Endgame (2019)"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellItems[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = cellItems[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    }
}















