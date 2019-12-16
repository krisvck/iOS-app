//
//  AddToDoViewController.swift
//  ToDo
//
//  Created by Krist Veruari on 10/21/19.
//  Copyright © 2019 Krist Veruari. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        /*
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
            
            previousVC.toDos.append(toDo)
            previousVC.tableView.reloadData()
            
            navigationController?.popViewController(animated: true)
        }
       */
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let toDo = ToDoCoreData(entity: ToDoCoreData.entity(), insertInto: context)
            
            if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
            }
            
            try? context.save()
            
            navigationController?.popViewController(animated: true)
        
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
        
    }
        //Trying to add an image here with the following code
        /*
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
            if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
                picker.dismiss(animated: true, completion: nil)
                self.createNoteItem(with: image)
            }
        }
        func createNoteItem (with image:UIImage) {
            let noteItem = Notes(context: NSManagedObjectContext)
            noteItem.image = NSData(data: UIImageJPEGRepresentation(image, 0.3)!)
            
            let alert = UIAlertController(title: "New Note", message: "Enter", preferredStyle: .alert)
            alert.addTextField { (textfield:UITextField) in
                textfield.placeholder = "Place"
            }
            alert.addTextField { (textfield:UITextField) in
            textfield.placeholder = "Description"
            }
            alert.addAction(UIAlertAction(title: "Save", style: .default, handler: {(action:UIAlertAction) in
                let nameField = alert.textFields?.first
                let descriptionField = alert.textFields?.last
            }))
 */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
