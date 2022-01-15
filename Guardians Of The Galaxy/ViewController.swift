//
//  ViewController.swift
//  Guardians Of The Galaxy
//
//  Created by Youssef Bhl on 14/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var gardians: [Gardian] = Datas.shared.gardians
    let guardianCell = GardianCellTableViewCell()
    let segueDetail = "gardianDetail"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == segueDetail else {return}
        guard let next = segue.destination as? DetailGardianController else { return }
        next.gardian = sender as? Gardian
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GardianCellTableViewCell.identifier, for: indexPath) as! GardianCellTableViewCell
        cell.setupCell(imageRef: gardians [indexPath.row].imagePath,
                       name: gardians [indexPath.row].name,
                       desc: gardians [indexPath.row].desc,
                       like: gardians [indexPath.row].likeStatus
        )
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gardians.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        let gardian = gardians[row]
        performSegue(withIdentifier: segueDetail, sender: gardian)
        tableView.reloadData()
    }
    
}

