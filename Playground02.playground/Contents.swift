let http404Error = (404, "Not Found")
print("The status code is \(http404Error.0)")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")

let (justTheStatusCode, _) = http404Error

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
