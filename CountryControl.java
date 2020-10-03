/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package App;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author My DELL
 */
public class CountryControl {
    private List<Country> countries = new ArrayList<Country>();
    
    public CountryControl(){
        countries.add(new Country("images/azerbaijan.png","Azerbaijan","Republic of Azerbaijan","Baku","+994",".az","Asia"));
        countries.add(new Country("images/bahamas.png","Bahamas","Commonwealth of the Bahamas","Nassau","+1-242",".ba","America"));
        countries.add(new Country("images/bahrain.png","Bahrain","Kingdom of Bahrain","Manaa","+973",".bx","Asia"));
        countries.add(new Country("images/bangladesh.png","Bangladesh","People's Republic of bangladesh","Dhaka","+880",".bd","Asia"));

    }
    public List<Country> getCountries(){
        return countries;
    }
}
