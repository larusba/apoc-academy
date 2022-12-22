package example;

import java.util.Arrays;
import java.util.List;

import org.neo4j.procedure.Description;
import org.neo4j.procedure.Name;

/**
 * This is an example how you can create a simple user-defined function for Neo4j.
 */
public class UserFunction {

    // procedure --> CALL name.proc(...) YIELD ...  --> for example call dbms.info()
    
    // function --> RETURN name.fun(...) ,  WITH name.fun(...), etc --> for example avg()
    
    
    // returns type, 
    // boolean, byte[], double, java.lang.Boolean, java.lang.Double, java.lang.Long, java.lang.Number, long
    // java.lang.Object, java.lang.String, 
    // java.time.LocalDate, java.time.LocalDateTime, java.time.LocalTime, java.time.OffsetTime, 
    // java.time.ZonedDateTime, java.time.temporal.TemporalAmount, 
    // java.util.List, java.util.Map, 
    // org.neo4j.graphdb.Node, org.neo4j.graphdb.Path, org.neo4j.graphdb.Relationship, 
    // org.neo4j.graphdb.spatial.Point
    
    @org.neo4j.procedure.UserFunction
    @Description("example.join(['s1','s2',...], delimiter) - join the given strings with the given delimiter.")
    public String join(
            @Name("strings") List<String> strings,
            @Name(value = "delimiter", defaultValue = ",") String delimiter) {
        if (strings == null || delimiter == null) {
            return null;
        }
        return String.join(delimiter, strings);
    }

    // similar to @Procedure annotation
    @org.neo4j.procedure.UserFunction("custom.split")
    @Description("custom split description")
    public List<String> split(
            @Name("strings") String strings,
            @Name(value = "delimiter", defaultValue = ",") String delimiter) {
        if (strings == null || delimiter == null) {
            return null;
        }
        
        final String[] split = strings.split(delimiter);
        // we transform String[] (not allowed) to List<String>
        return Arrays.asList(split);
    }
}