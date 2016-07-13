//Github: Conradomateu


func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

// Calling a function

greet("Conradomateu", day: "Tuesday")


//Complex Functions

func goTCharacter(name: String, abilities: String) -> (welcome: String, description: String) {
    return ("Welcome, \(name).", " Your titles  are: \(abilities) .")
}

let character = goTCharacter("Daenerys Targaryen", abilities: "breaker of chains and mother of dragons")
character.description
character.welcome



// This func is returning another func that can be later assigned to a variable

func callDragons () -> ((String, Int) -> String) {
    func summon(name: String, times: Int) -> (String) {
        return "\(name) has summoned  \(times) Dragons"
    }
    return summon
}
let summon = callDragons()
summon("Daenerys Targaryen", 2)


//Variadic functions: functions that have a variable number of args

func dragonNames (names: String...) -> () {
    for name in names {
        print("\(name)")
    }
}
dragonNames("Drogon","Viserion","Rhaegal")

//Closures: usually enclosed in {}
//(argument) -> (return type)






