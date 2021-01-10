public class ParkLocator {

    public  List<String> country(String countryName){
        List<String> CountryNames=new  List<String>();
        ParkService.ParksImplPort parkService=new ParkService.ParksImplPort();
       CountryNames= parkService.byCountry(countryName);
        return CountryNames;
        
    }
}