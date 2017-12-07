//
//  SubViewController.swift
//  pubgWiki
//
//  Created by Ryusei Tashiro on 2017/12/06.
//  Copyright © 2017年 Ryusei Tashiro. All rights reserved.
//

import UIKit

class SubViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    /// 画像のファイル名
    let imageNames = ["Weapon", "Magazine", "Attachment", "Equipment"]
    
    /// 画像のタイトル
    let imageTitles = ["ネコ1", "ネコ2", "イヌ1", "イヌ2"]
    
    /// 画像の説明
    let imageDescriptions = [
        "ボックスから顔だけだして下を見ているオス猫",
        "寝ころびながらじゃれる猫",
        "散歩中のポメラニアン",
        "お散歩中のワンちゃん"
    ]
    let test = [
        ["ネコ12", "ネコ2", "イヌ1", "イヌ2"],
        ["ネコ13", "ネコ2", "イヌ1", "イヌ2"],
        ["ネコ14", "ネコ2", "イヌ1", "イヌ2"],
        ["ネコ15", "ネコ2", "イヌ1", "イヌ2"],
        ["ネコ16", "ネコ2", "イヌ1", "イヌ2"],
        ["ネコ17", "ネコ2", "イヌ1", "イヌ2"],
        ["ネコ18", "ネコ2", "イヌ1", "イヌ2"],
    ]
    
    var selectedWeaponId: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(test[selectedWeaponId])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeaponCell", for: indexPath) as! CustomTableViewCell
        
        // セルに値を設定
        cell.setCell(imageName: imageNames[indexPath.row], titleText: imageTitles[indexPath.row], descriptionText: imageDescriptions[indexPath.row])
        
        return cell
    }
}
