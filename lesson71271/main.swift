//
//  main.swift
//  lesson71271
//
//  Created by Nursultan on 11/4/24.
//

//var test: [String] = []
//test.append(<#T##newElement: String##String#>)

var number = 0
//пока
while number < 10 { //true, false
    print(number)
    number = number + 1
}

//while true {
//    print("Введите текст")
//    let text = readLine()!
//    
//    if text == "end" {
//        print("Finish")
//        break
//    }
//}


//3 персонажа будут биться с противником

let heroesNames: [String] = ["Archer", "Wizard", "Berserk"]
var heroesHealth: [Int] = [200, 200, 300]
var heroesDamage: [Int] = [50, 50, 40]

let dragonGorynych = "Змей Горыныч"
var dragonHealth = 1000
var dragonDamage = 70

var isGameFinished = false

var isFirstAttack = Bool.random()

func heroesHit() {
    print("Герои атакуют!")
    for index in 0...heroesDamage.count - 1 {
        dragonHealth = dragonHealth - heroesDamage[index]
    }
}

func dragonHit() {
    print("Берегитесь, букашки!")
    for index in 0...heroesHealth.count - 1 {
        heroesHealth[index] = heroesHealth[index] - dragonDamage
    }
}

func printDragonStats() {
    if dragonHealth <= 0 {
        dragonHealth = 0
    }
    print("Здоровье \(dragonGorynych): \(dragonHealth)")
    
}

func printHeroesStats() {
    for index in 0...heroesNames.count - 1 {
      //  if heroesHealth[index]
        if heroesHealth[index] <= 0 {
            heroesHealth[index] = 0
        }
        print("Здоровье героя \(heroesNames[index]): \(heroesHealth[index])")
    }
}

while isGameFinished == false {
    
    if isFirstAttack == false {
        dragonHit()
        printHeroesStats()
        heroesHit()
        printDragonStats()
    } else {
        heroesHit()
        printDragonStats()
        dragonHit()
        printHeroesStats()
    }

    print("-------------------------------")
    
    if dragonHealth <= 0 {
        print("Герои победили!")
        isGameFinished = true
    } else if heroesHealth[0] <= 0 && heroesHealth[1] <= 0 && heroesHealth[2] <= 0 {
        isGameFinished = true
        print("\(dragonGorynych) победил!")
    }
}

//Основные пункты:
//Нужно добавить 4 героя(Медик), каждый раунд лечит героев на фиксированное значение или на рандомное(на выбор) и не наносит урон! Если умирает, то возможности лечить не должно быть.
//Нужно добавить лучнику способность нанести критический урон с шансом 20%
//Нужно добавить Берсерку способность принимать часть урона на себя(фиксированно или рандомно, на выбор)

//Дополнительные:
//Добавить Змею Горынычу способность испускать огонь с шансом 20%. Повышенный урон на фиксированное значение или рандомно (на выбор)
//Добавить Магу способность выбирать рандомно одну из следующих способностей: заморозить(1 раунд Змей Горыныч не бьет), нанести повышенный урон, вылечить героев!


print("myau")
var b = 3

