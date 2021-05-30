package im.pwr.edu.pl.lab3.repo;

import java.util.List;

import im.pwr.edu.pl.lab3.entity.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, Long> {

    List<Customer> findByLastName(String lastName);

    Customer findById(long id);
}
