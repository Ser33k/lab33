Architektura
======================

Diagram klas:
----------------------

.. uml::

    class Customer {
     -id
     -lastName
     -firstName
     +Customer()
     +Customer(firstName : String, lastName : String)
     +getId()
     +getFirstName()
     +getLastName()
    }

    interface CustomerRepository {
        +findByLastName(lastName : String)
        +findById(id : Long)
    }

    class CustomerController {
        -customerRepository
        +CustomerController(CustomerRepository)
        +getUserById(id : Long)
    }

    class Lab3Application {
        +home()
        +main(String [])
        +dataBootstrap(CustomerRepository)
    }

    Customer <|.. CustomerRepository
    CustomerRepository <|.. CustomerController

Diagram przypadków użycia
--------------------------

.. uml::

    left to right direction
    skinparam packageStyle rectangle
    actor "User" as fc
    actor "Database" as db
    rectangle Customers {
      usecase "Find all customers" as UC1
      usecase "Find customer by ID" as UC2
      (Customer not found) .> UC2 : extends
      (Customers not found) .> UC1 : extends
    }
    fc --> UC1
    fc --> UC2
    UC1 <-- db
    UC2 <-- db
