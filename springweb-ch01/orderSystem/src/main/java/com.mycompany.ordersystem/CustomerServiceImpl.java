package com.mycompany.ordersystem;

import java.util.List;
public class CustomerServiceImpl implements CustomerService{
    public CustomerRepository customerRepository;

    @Override
    public Customer getCustomer(long id) {
        return customerRepository.findById(id);
    }

    @Override
    public List<Customer> getCustomers() {
        return customerRepository.findAll();
    }

    @Override
    public List<Customer> getCustomersByName(String name) {
        return customerRepository.findByName(name);
    }

    @Override
    public void saveCustomer(Customer customer) {
        customerRepository.save(customer);
    }

    @Override
    public void deleteCustomer(long id) {
        Customer cust = getCustomer(id);
        if(cust != null){
            customerRepository.delete(id);
        }
    }
}
