import Vapor

let drop = Droplet()

drop.get("/") { request in
    return "Vapor Test!"
}

drop.get("/Hello", ":name") { request in
    if let name = request.parameters["name"]?.string {
        print(request.uri)
        print(request.parameters)
        
        return "You are \(name)!!!!"
    }
    return "Error retrieving parameters."
}

drop.run()
