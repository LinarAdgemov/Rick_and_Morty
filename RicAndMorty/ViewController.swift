//
//  ViewController.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 07.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableEpisodes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        forSetBackground ()
        
        requestEpisodes {
            self.tableEpisodes.reloadData()
            print ("Success")
        }

        tableEpisodes.dataSource = self
        tableEpisodes.delegate = self
        
       
        }
    
    func forSetBackground () {
        let image = UIImage(named: "1")
            let imageView = UIImageView(image: image)
            tableEpisodes.backgroundView = imageView
        imageView.alpha = 0.8
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    
        return 44
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if let headerCell = Bundle.main.loadNibNamed(<#T##name: String##String#>, owner: <#T##Any?#>, options: <#T##[UINib.OptionsKey : Any]?#>)
//
//    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "List of the episodes"
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToTheEpisodesDescriptionViewController", sender: indexPath)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcTheEpisodesDescription = segue.destination as? TheEpisodesDescriptionViewController {

        }
    }
//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell (withIdentifier: ClassForCellTableViewCell.IDcell) as! ClassForCellTableViewCell
        
        cell.LableName.text = arrayResults [indexPath.row].name
        cell.LableID.text = "\(arrayResults [indexPath.row].id)"
        return cell
        
        
    }

}













//class UITableView {
//    public let cells: [UITableViewCell]
//
//    func dysplay() {
//        datasource.tableView(self, cellForRowAt: indexpath)
//    }
//}




//class A: C {
//    func secretMethod() {
//    }
//}
//
//class B {
//    var a: C
//    func callB() {
//
//    }
//}
//
//protocol C {
//    func calc()-> Int
//}
//
//extension C {
//    func calc()-> Int {
//        return 5+5
//    }
//}
//
//let b = B()
//let a = A()
//b.a = a






//
//class A {
//    func callC() {
//
//    }
//}
//
//class B {
//    let a: A
//
//    func callB() {
//        a.callC()
//    }
//}
//
//
//let b = B()
//let a = A()
//b.c = a

//class A {
//    func main() {
//        print("A")
//    }
//}
//
//class Z {
//    func second() {
//        print("Z")
//    }
//}
//
//class B: A, Z{
//
//}
//
//let b = B()
//b.main()



