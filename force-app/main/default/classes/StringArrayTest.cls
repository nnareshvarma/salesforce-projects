public class StringArrayTest {

    public static List<String> generateStringArray(Integer n){
        List<String> acc=new List<String>();
        
        for(Integer i=0;i<n;i++)
        {
            acc.add('Test '+i);
        }
   return  acc;        

    }
        
}