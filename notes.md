https://learn.co/lessons/jwt-auth-rails

bcrypt::Password -- inherits from Ruby string class, and has its own == instance method. This means we can run a plaintext ps through bcrypt using the same salt and compare it to digested pw. 

AND BCrypt can take a stringified pw digest and turn it into an isntance of bcrypt: password, using == 

we can't store bcrypt::password instances in our database. 

using bcrypt, we don't have to write our own authenticate method, it does that for us. 


http status codes: http://httpstatusrappers.com/202.html

Rails http status codes: 
https://gist.github.com/mlanett/a31c340b132ddefa9cca


JWT: 
request access w username and password
app validates
app gives signed token to client
client stores token a + presents it with every request. 

JWT: 3 strings, separated by periods 
header.payload (person, id, etc).signature

jwt.io

Put authenticate/authorize users in top level application controller 

sending the token: 
fetch('http://localhost:3000/api/v1/profile', {
  method: 'GET',
  headers: {
    Authorization: `Bearer <token>`
  }
})