//
//  SubViewController.swift
//  pubgWiki
//
//  Created by Ryusei Tashiro on 2017/12/06.
//  Copyright © 2017年 Ryusei Tashiro. All rights reserved.
//

import UIKit

class SubViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    let images = [
        ["AWM", "M24", "Kar98k", "vss"],
        ["300", "762", "45", "556"],
        ["AR_suppresser", "AR_flash_hider", "AR_concen", "shotgun_choke"],
        ["headlv1", "headlv2", "headlv3", "Equipment"],
        ["kit1", "kit2", "kit3", "kit4"],
    ]
    
    
    let titles = [
        ["AWM", "M24", "Kar98k", "VSS"],
        [".300マグナム", "7.62mm", ".45ACP", "5.56mm"],
        ["サプレッサー", "フラッシュハイダー", "コンペセイター", "ショットガンチョーク"],
        ["バイクヘルメット Lv1", "ミリタリーヘルメット Lv2", "スペツナズヘルメット Lv3", "バックパック Lv3"],
        ["応急処置キット", "包帯", "鎮痛剤", "エナジードリンク"],
    ]
    
    let descriptions = [
        [".300マグナム", "7.62mm", "7.62mm", "9mm"],
        ["AWM", "AKM, Groza, Kar98k", "P1911, Tommy Gun", "M16A4, M249, M416"],
        ["発砲音を抑える", "発砲時の光を抑える", "反動を抑える", "散弾の拡散範囲を狭める"],
        ["耐久値 80 容量 40", "耐久値 150 容量 50", "耐久値 230 容量 60", "増加容量 +250"],
        ["体力を75回復する", "一定時間経過回復", "ブーストを60上げる", "ブーストを40上げる"],
    ]
    
    var selectedWeaponId: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(titles[selectedWeaponId])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeaponCell", for: indexPath) as! CustomTableViewCell
        
        cell.setCell(imageName: images[selectedWeaponId][indexPath.row], titleText: titles[selectedWeaponId][indexPath.row], descriptionText: descriptions[selectedWeaponId][indexPath.row])
        
        return cell
    }
}
