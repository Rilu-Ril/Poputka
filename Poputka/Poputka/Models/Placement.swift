//
//  Placement.swift
//  Poputka
//
//  Created by Sanira Madzhikova on 4/3/18.
//  Copyright © 2018 Neobis. All rights reserved.
//

import Foundation

struct Placement: Decodable {
	var id: Int
	var name: String?
	var phone: String?
	var isDriver: Bool?
	
	var start_address: String! 
	var start_latitude: Float?
	var start_longitude: String?
	
	var end_address: String?
	
	var start_time: String?
}
