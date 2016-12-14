//
//  ViewController.swift
//  Make
//
//  Created by Julian Dragoi on 30/11/2015.
//  Copyright © 2015 Julian Dragoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var myTableView: UITableView!
    var arrayOfPersons:[Person]=[Person]()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         
         self.setUpPersons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpPersons()
    {
        let person1 = Person(name: "Youth Theatre opportunities in rural Neston", imageName: "Roe.jpg")
        let person2 = Person(name: "Steve", imageName: "Steve.png")
        
        arrayOfPersons.append(person1)
        arrayOfPersons.append(person2)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPersons.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomCell
        
        if (indexPath as NSIndexPath).row % 2==0{
            
            cell.backgroundColor = UIColor(red:0.81, green:0.89, blue:0.91, alpha:1.0)
        }
        else
        {
             cell.backgroundColor = UIColor(red:0.81, green:0.89, blue:0.91, alpha:1.0)
        }
        
        let person = arrayOfPersons[(indexPath as NSIndexPath).row]
        
        
        cell.setCell(person.name, imageName: person.imageName)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            arrayOfPersons.remove(at: (indexPath as NSIndexPath).row)
            self.myTableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let person = arrayOfPersons[(indexPath as NSIndexPath).row]
        
        let detailViewController: DetailViewController = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailViewController.nameString = person.name
        detailViewController.projectPicName = person.imageName
        
        
        self.present(detailViewController, animated: true, completion: nil)
    }

    
    


}
