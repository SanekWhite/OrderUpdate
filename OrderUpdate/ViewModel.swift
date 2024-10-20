//
//  ViewModel.swift
//  OrderUpdate
//
//  Created by Александр Белый on 20.10.2024.
//

import Foundation

var order = Order(screenTitle: "Оформление заказа",
                  promocodes: [promo1, promo2, promo3, promo4, promo5],
                  products: [product1, product2],
                  paymentDiscount: 20.0,
                  baseDiscount: 50.0)


let product1 = Order.Product(price: 2000, title: "Наушники")
let product2 = Order.Product(price: 3000, title: "Фен")

let promo1 = Order.Promocode(title: "Hello", percent: 5, endDate: nil, info: "-5%", active: false)
let promo2 = Order.Promocode(title: "Vesna23", percent: 5, endDate: nil, info: "-5%", active: false)
let promo3 = Order.Promocode(title: "4300162112534", percent: 5, endDate: nil, info: "-5%", active: false)
let promo4 = Order.Promocode(title: "4300162112534", percent: 5, endDate: nil, info: "-5%", active: false)
let promo5 = Order.Promocode(title: "4300162112534", percent: 5, endDate: nil, info: "-5%", active: false)




