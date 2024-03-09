
import UIKit

class HistoryTableViewController: UITableViewController {
    
    var historyManager : HistoryManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (historyManager?.getAllPurchaseHistories().count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = historyManager!.getAllPurchaseHistories()[indexPath.row].name
        
        let qty = historyManager!.getAllPurchaseHistories()[indexPath.row].quantity ?? 0;
        cell.detailTextLabel?.text = "\(qty)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedHistory = historyManager?.getAllPurchaseHistories()[indexPath.row]
            //pass selected history data to HistoryDetailViewController
            if let viewController = storyboard?.instantiateViewController(identifier: "HistoryDetailViewController") as? HistoryDetailViewController {
                viewController.history = selectedHistory
                navigationController?.pushViewController(viewController, animated: true)
            }
    }
    
}
