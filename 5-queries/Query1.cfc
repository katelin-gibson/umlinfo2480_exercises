/**
 * Acts as the main controller for our practice query1.cfm page * * @author Katelin Gibson * @date 3/16/2024 
 **/

component {
    /** returns all books in our database **/
    function allBooks() {
        try { 
            var qs = new query( datasource = "KatelinGibson" );
            qs.setSql( "select * from books order by title" );
            return qs.execute().getResult();
        }
        catch ( any err ) {
            writeDump( err );
        }
    }
    
}