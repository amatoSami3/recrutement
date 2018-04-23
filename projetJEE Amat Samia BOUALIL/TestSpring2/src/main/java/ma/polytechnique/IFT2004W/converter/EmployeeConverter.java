package ma.polytechnique.IFT2004W.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import ma.polytechnique.IFT2004W.entites.Employee;
import ma.polytechnique.IFT2004W.metier.EmployeeMetier;

 

@Component
public class EmployeeConverter implements Converter<Object, Employee>{
 
    @Autowired
    EmployeeMetier empService;
 
    /**
     * Gets UserProfile by Id
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
    public Employee convert(Object element) {
        Integer id = Integer.parseInt((String)element);
        Employee emp= empService.findOne(id);
        System.out.println("Categorie : "+emp);
        return emp;
    }
     
}