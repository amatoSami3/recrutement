package ma.polytechnique.IFT2004W.converter;

/*import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import ma.polytechnique.IFT2004W.entites.Employee;
import ma.polytechnique.IFT2004W.entites.Modele;
import ma.polytechnique.IFT2004W.metier.EmployeeMetier;
import ma.polytechnique.IFT2004W.metier.ModeleMetier;

 

@Component
public class ModeleConverter implements Converter<Object, Modele>{
 
    
    
    @Autowired
    ModeleMetier modeleService;
    
 
    /**
     * Gets UserProfile by Id
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
   /* public Modele convert(Object element) {
        Integer id = Integer.parseInt((String)element);
        Modele modele= modeleService.findOne(id);
        System.out.println("Categorie : "+modele);
        return modele;
    }
     */
//}