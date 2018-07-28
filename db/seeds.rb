# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Family.destroy_all
Parent.destroy_all
Child.destroy_all
Event.destroy_all
Playdate.destroy_all


family1 = Family.create(title: 'Taylor', username: 'TaylorFamily',password: 'taylor123')

family2 = Family.create(title: 'Amundson', username: 'AmundsonFamily', password:'amundson123')

 cecilia = Parent.create(family_id: 3, firstName: 'Cecilia', lastName: 'Taylor', cellPhone: '7183478978', dateOfBirth: '01231984', gender: 'female', address: '23 court street', city: 'Brooklyn', state: 'NY', zipCode: '11213', email: 'cecilia@gmail.com')

lori = Parent.create(family_id: 4, firstName: 'Lori', lastName: 'Amundson', cellPhone: '7185552345', dateOfBirth: '09231983', gender: 'female', address: '17 prince street', city: 'Brooklyn', state: 'NY', zipCode: '11221', email: 'lori@gmail.com')


marius = Child.create(family_id: 3, childFirstName: 'Marius', childLastName: 'Smith', childGender: 'male', childDateOfBirth: '08182015', medicalConditions: 'none')

paige = Child.create(family_id: 4, childFirstName: 'Paige', childLastName: 'Blake', childGender: 'female', childDateOfBirth: '07182016', medicalConditions: 'none')

event1= Event.create(title: 'Music of Grateful Dead for Kids', eventType: 'concert', date: '07/25/2018', startTime: '3:00pm', endTime: '6:00pm', spotsAvailable: 20, address: '2100 park ave', city: 'New York', state: 'NY', zipCode: 10021, country: 'USA', supervisedBy: 'Alex Key', food: 'Paella', rating: 8, eventFees: 10, imageUrl: 'https://image-ticketfly.imgix.net/00/02/92/32/16-og.png?w=167&h=333')

event2= Event.create(title: 'Hamilton Play for Kids', eventType: 'Brooklyn Botanical Garden', date: '07/29/2018', startTime: '12:00pm', endTime: '5:00pm', spotsAvailable: 10, address: '21 prospect park', city: 'Brooklyn', state: 'NY', zipCode: 11121, country: 'USA', supervisedBy: 'Sally Pond', food: 'Pizza', rating: 9, eventFees: 10, imageUrl: 'https://image-ticketfly.imgix.net/00/02/92/32/84-og.png?w=167&h=333')


playdate1 = Playdate.create(host_id:1, guest_id:2, event_id: 3, date: '07/28/2018', startTime: '3:00pm', endTime: '6:00pm')

playdate2 = Playdate.create(host_id: 2, guest_id: 1, event_id: 4, date: '08/08/2018', startTime: '12:00pm', endTime: '5:00pm')
