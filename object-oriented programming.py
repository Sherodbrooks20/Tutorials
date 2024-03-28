# object-oriented programming 

#class Dog:
    #def _init_(self, name, age):
     #   self.name = name
      #  self.age = age
       # print(name)

    #def get_name(self):
        #return self.name
    
    #def get_age(self):
        #return self.age
    
    #def set_age(self, age):
       # self.age = age

    #def add_one(self, x):
        #return x + 1

    #def bark(self):
        #print("bark")


#d= Dog()
#d.bark()
#print(d.add_one(5))

#print(type(d))
#d = Dog("tim")
#print(d.name)
#d2 = Dog("bill")
#print(d2.name)
#d = Dog('time', 34)
#print(d.get.age())
#d2 = Dog('bill', 12)
#print(d2.get.age())
#d = Dog('tim', 34)
#d.set_age(23)
#print(d.get_age())
        
#dogs_name = ['tim', 'bill']
#dogs_age = [34,12]


#class Student:
    #def _init_(self,name,age,grade):
        #self.name = name
       # self.age = age
      #  self.grade = grade # 0-100

    #def get_grade(self):
     #   return self.grade 
     
#class Course:
    #def _init_(self,name,max_students):
     #   self.name = name
      #  self.max_students = max_students
       # self.students = []

   # def add_students(self,student):
   #     if len(self.students) < self.max_students:
   #         self.students.append(student)
   #         return True
   #     return False
   # 
   # def get_average_grade(self):
   #     value = 0
   #     for student in self.students:
   #         value += student.get_grade()#

        #return value / len(self.students)

#s1 = Student('tim', 19, 95)
#s2 = Student('bill', 19, 75)
#s3 = Student('jill', 19, 65)

#course = Course("Science", 2)
#course.add_student(s1)
#course.add_student(s2)
#print(course.add_student(s3))
#print(course.get_average_grade())
    
class pet:
    def _init_(self,name,age):
        self.name = name
        self.age = age

    def show(self):
        print(f'I am {self.name} and I am {self.age} years old')


    def speak(self):
        print('I dont know what i say')
class Cat(pet):

    def _init_(self,name, age, color):
        super()._init_(name, age)
        self.color = color

    def speak(self):
        print('meow')

    def show(self):
        print(f'I am {self.name} and I am {self.age} years old and I am {self.color}')

class Dog(pet):
    def speak(self):
        print('bark')
        
class fish(pet):
    pass


p = pet('tim', 19)
p.show()
c = Cat('bill', 34, "Brown")
c.show()
d = Dog('jill', 25)
d.show()
f = fish('bubbles', 10)
f.speak()

# Next example 

class Person:
    number_of_people = 0 #constant as a class attribute 

    def _init_(self,name):
        self.name = name 
        #Person.number_of_people += 1
        Person.add_person()

    @classmethod                        # decorator
    def number_of_people(cls):
        return cls.number_of_people_()
    

    @classmethod
    def add_person(cls):
        cls.number_of_people += 1


p1 = Person('tim')
#print(Person.number_of_people)
p2 = Person('jill')
print(Person.number_of_people_())
#print(Person.number_of_people)
#print(p1.number_of_people) #or Person.number_of_people
#Person.number_of_people = 8
#print(p2.number_of_people)

#Static methods

class math:
     
     @staticmethod
     def add5(x):
         return x + 5
     
     @staticmethod 
     def add10(x):
         return x + 10
     
     @staticmethod
     def pr():
         print('run')

print(math.add5(5))
print(math.add10(10))

math.pr()

         