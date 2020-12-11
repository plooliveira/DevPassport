## user.role = 1 ---> usuário
## user.role = 2 ---> revisor
## user.role = 3 ---> empresa

# User.create(email: "usuario1@devpassport.com", role: 1, name: "Allan", cpf: "03208065108", password: "devpassport")
# User.create(email: "usuario2@devpassport.com", role: 1, name: "Paulo", cpf: "03208065108", password: "devpassport")
# User.create(email: "usuario3@devpassport.com", role: 1, name: "Vivian", cpf: "03208065108", password: "devpassport")
# User.create(email: "revisor1@devpassport.com", role: 2, name: "Revisor1 do DevPassport", cpf: "03208065108", password: "devpassport")
# User.create(email: "revisor2@devpassport.com", role: 2, name: "Revisor2 do DevPassport", cpf: "03208065108", password: "devpassport")
# User.create(email: "revisor3@devpassport.com", role: 2, name: "Revisor3 do DevPassport", cpf: "03208065108", password: "devpassport")
# User.create(email: "nubank@devpassport.com", role: 3, name: "Nubank", cpf: "0", password: "devpassport")
# User.create(email: "stone@devpassport.com", role: 3, name: "Stone", cpf: "0", password: "devpassport")


Visa.create(title: "Front-End", description: "From basic stuff (HTML, CSS and JS) to modern frameworks like React ")
Visa.create(title: "Back-End", description: "Test your web applications and database skills, using Rails, Django and other frameworks")
Visa.create(title: "Full Stack", description: "Prove you're a complete web developer!")
Visa.create(title: "Mobile", description: "Developing applications for iOS and Android")
Visa.create(title: "Data Analytics", description: "Prove you're a true data scientist")


Test.create(
  title: "React",
  description: "In this test you'll need to implement a Single Page Application using React.",
  user: User.find(5),
  visa: Visa.where(title: "Front-End").first,
  seniority: "Junior Developer",
  price: 99,
  link: "https://github.com/hurbcom/challenge-charlie/fork"
)

Test.create(
  title: "Vue.js",
  description: "Game project! A simple player vs monster game to practice the foundation of Vue.js.",
  user: User.find(6),
  visa: Visa.where(title: "Front-End").first,
  seniority: "Senior Developer",
  price: 149,
  link: "https://github.com/hurbcom/challenge-charlie/fork"
)


Test.create(
  title: "Svelte",
  description: "Instead of using techniques like virtual DOM diffing, Svelte writes code that surgically updates the DOM when the state of your app changes.",
  user: User.find(7),
  visa: Visa.where(title: "Front-End").first,
  seniority: "Senior Developer",
  price: 199,
  link: "https://github.com/hurbcom/challenge-charlie/fork"
)


Test.create(
  title: "AngularJS",
  description: "In this test you'll need to implement a Single Page Application using AngularJS.",
  user: User.find(4),
  visa: Visa.where(title: "Front-End").first,
  seniority: "Senior Developer",
  price: 149,
  link: "https://github.com/hurbcom/challenge-charlie/fork"
)

Test.create(
  title: "Vanilla Framework",
  description: "No frameworks! Just the ol HTML, CSS and Javascript.",
  user: User.find(3),
  visa: Visa.where(title: "Front-End").first,
  seniority: "Junior Developer",
  price: 99,
  link: "https://github.com/hurbcom/challenge-charlie/fork"
)


Test.create(
  title: "Clojure Test",
  description: "Design your own web application using Clojure",
  user: User.where(name: "Nubank").first,
  visa: Visa.where(title: "Back-End").first,
  seniority: "Junior Developer",
  price: 100,
  link: "https://github.com/hurbcom/challenge-charlie/fork"
)

Test.create(
  title: "Back-End Test - Using Django",
  description: "Code a complete web application using Django and PostgreSQL",
  user: User.where(name: "Stone").first,
  visa: Visa.where(title: "Back-End").first,
  seniority: "Senior Developer",
  price: 100,
)

Test.create(
  title: "Full Stack Challenge",
  description: "Implement a complete web application",
  user: User.where(name: "Stone").first,
  visa: Visa.where(title: "Full Stack").first,
  seniority: "Senior Developer",
  price: 100,
  link: "https://github.com/hurbcom/challenge-charlie/fork"
)
