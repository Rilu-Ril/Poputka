//
//  Placement.swift
//  Poputka
//
//  Created by Sanira Madzhikova on 4/3/18.
//  Copyright © 2018 Neobis. All rights reserved.
//

import Foundation

struct Placement: Decodable {
	var from: String!
	var fromLat: String?
	var fromLong: String?
	
	var to: String!
	
	var time: String!
	var comment: String?
	var name: String?
}
