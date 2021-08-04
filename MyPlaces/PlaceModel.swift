//
//  File.swift
//  MyPlaces
//
//  Created by Alexander Airumyan on 31.07.2021.
//

import Foundation

struct Place {
	
	let name: String
	let location: String
	let type: String
	let image: String
	
	static let restarauntNames = ["Burger Heroes", "Kitchen","Bonsai", "Дастархан", "Индокитай", "Х.О", "Балкан Гриль", "Sherlock Holmes", "Speak Easy", "Morris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
	
	static func getPlace() -> [Place] {
		
		var places = [Place]()
		
		for place in restarauntNames {
			places.append(Place(name: place, location: "Краснодар", type: "Ресторан", image: place))
			
		}
		return places
	}
}
