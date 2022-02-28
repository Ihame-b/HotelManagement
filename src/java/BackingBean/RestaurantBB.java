/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BackingBean;

import Model.RestaurantInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.GenericType;

@ManagedBean(name = "Resto")
@SessionScoped
public class RestaurantBB implements Serializable{
   private RestaurantInfo restau;
   public boolean update= false;
    public RestaurantBB() {
        restau=new RestaurantInfo();
        
    }
    public String create(){
        if(update){
            update=false;
            ClientBuilder.newClient().target("http://localhost:8080/newprore/api/RestaurantManagementweb").request().put(Entity.json(restau));
        }else{
            ClientBuilder.newClient().target("http://localhost:8080/newprore/api/RestaurantManagementweb").request().post(Entity.json(restau));
            update = false;
        }
       return "index.xhtml";
    }
    public List<RestaurantInfo> getAllRestaurant(){
        return ClientBuilder.newClient()
                .target("http://localhost:8080/newprore/api/RestaurantManagementweb")
                .request().get(new GenericType<List<RestaurantInfo>>(){});
    }

    public RestaurantInfo getRestau(){
        return restau;
    }
  
    public String deleteResto(String id) {
        restau= ClientBuilder.newClient()
                .target("http://localhost:8080/newprore/api/RestaurantManagementweb/" + id)
                .request().delete(RestaurantInfo.class);
//        System.out.println(restau.getRname());
       if (restau != null) {
            return "index.xhtml";
        } else {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            facesContext.addMessage("auth-frm", new FacesMessage("delete failed"));
            return "index.xhtml";
        }
    }
   public String ResetForm(){
       return"CreateForm.xtml";
   }
   public String handleUpdate(RestaurantInfo resto){
       restau=resto;
       update=true;
       return "CreateForm.xhtml";
   } 
}
