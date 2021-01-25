Specs:

 [x] Using Ruby on Rails for the project - Ruby on Rails is in use. 
 [x] Include at least one has_many relationship ([doctor: has_many :appointments][user: has_many :appointments])
 [x] Include at least one belongs_to relationship ([appointments: belong_to :user, :doctor])
 [x] Include at least two has_many through relationships ([doctor: has_many :users through, :appointments]
     [user: has_many :doctors,     through: :appointments])
 [x] Include reasonable validations for simple model objects (all models have validations)
 [x] Include a class level ActiveRecord scope method (:upcoming)
 [x] Include signup
 [x] Include login
 [x] Include logout 
 [x] Include third party signup/login (how e.g. Devise/OmniAuth) GOOGLE
 [x] Include nested resource show or index (URL  doctor/2/appointments) 
 [x] Include nested resource "new" form (URL doctor/1/appointments/new)
 [x] Include form display of validation errors (validated in layout/errors)
Confirm:

 The application is pretty DRY [x]
 Limited logic in controllers [x]
 Views use helper methods if appropriate [x]
 Views use partials if appropriate [x]