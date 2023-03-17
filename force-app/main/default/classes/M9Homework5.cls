public class M9Homework5 {
    public static void run(){
        String stn = null;
        try{
            stn.toLowerCase();
            System.debug(stn);
        }
        catch(NullPointerException nl){
            System.debug('Cause: '+nl.getCause());
            System.debug('Message: '+nl.getMessage());
            System.debug('Null Pointer Exception caught!');
        }
        
    }

}