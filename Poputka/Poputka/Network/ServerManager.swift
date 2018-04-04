//
//  ServerManager.swift
//  Poputka
//
//  Created by Sanira Madzhikova on 4/3/18.
//  Copyright © 2018 Neobis. All rights reserved.
//

import Foundation


class ServerManager: HTTPRequestManager  {
	
	class var shared: ServerManager {
		struct Static {
			static let instance = ServerManager()
		}
		return Static.instance
	}
	
	
	func getPlacements(_ completion: @escaping ([Placement])-> Void, error: @escaping (String)-> Void) {
		
		self.post(endpoint: "all/", parameters: nil, completion: { (data) in
			do {
				guard let data = data else {return }
				let p = try JSONDecoder().decode([Placement].self, from: data)
				completion(p)
			} catch let err {
				error(err.localizedDescription)
			}
		}, error: error)
	}
}

