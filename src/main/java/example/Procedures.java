package example;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Stream;

import org.neo4j.graphdb.Entity;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Label;
import org.neo4j.graphdb.Node;
import org.neo4j.graphdb.Transaction;
import org.neo4j.logging.Log;
import org.neo4j.procedure.Context;
import org.neo4j.procedure.Description;
import org.neo4j.procedure.Mode;
import org.neo4j.procedure.Name;
import org.neo4j.procedure.Procedure;
import org.neo4j.procedure.TerminationGuard;

/**
 * This is an example showing how you could expose Neo4j's full text indexes as
 * two procedures - one for updating indexes, and one for querying by label and
 * the lucene query language.
 */
public class Procedures {
    
    // NOTE: only @Context public not-static and public static attributes allowed  

    // similar to Spring's @Autowired or Angular's @Injectable 

    // in general, every interface with @PublicApi annotation can be injected
    // Log

    // TerminationGuard --> has 1 method terminationGuard.check() to check if the transaction is terminated
    //      because in some cases, the procedure is not able to verify automatically 
    //      (e.g. apoc.load.json, apoc.util.sleep)

    // GraphDatabaseService 
    //  -->    Transaction beginTx(), void executeTransactionally(), String databaseName(), boolean isAvailable()

    // Transaction --> current transaction
    
    @Context
    public Transaction tx;

    

    // This gives us a log instance that outputs messages to the
    // standard log, normally found under `data/log/console.log`
    @Context
    public Log log;


    public static final String LOG_STRING = "Log che fa cose...";


    // in this case the name is not explicit,
    // to the procedure name will be the package name (example) plus the method name (nothing)
    //  --> CALL example.nothing() <--- without a YIELD
    @Procedure
    @Description("log something and return nothing")
    public void nothing() {
        log.warn(LOG_STRING);
    }
    
    
    // with parameter
    // @Name(value)
    @Procedure("custom.ajeje")
    @Description("custom.ajeje returns some Longs from a list")
    public Stream<LongResult> ajeje(@Name("numbers") List<Long> numbers) {
        return numbers.stream()
                .map(LongResult::new);
    }


    // @Procedure has 2 parameter, procedure name 
    // and mode, to create a procedure which allow write and/or schema
    // Mode può essere DEFAULT (equivalente a READ), WRITE, 
    // SCHEMA (which include WRITE too), 
    // DBMS: system operations - i.e. not against the graph, e.g. the native dbms* procs, like the `call dbms.info()`
    
    // @Name can have a defaultValue as well
    
    // , eager = true --> will execute every stream value before moving on (i.e. YIELD)
    @Procedure(value = "custom.brazorf", mode = Mode.READ)
    @Description("custom.brazorf returns key values from a map")
    public Stream<KeyValueResult> brazorf(@Name(value = "numbers", defaultValue = "{}") Map<String, Object> map) {
        // map to entries
        final Set<Map.Entry<String, Object>> entries = map.entrySet();
        
        // and then transform them in key values record
        return entries
                .stream()
                .map(e -> new KeyValueResult(e.getKey(), e.getValue()));
    }
    
    // 
    // NOTE: @Description is optional
    // 

    /**
     * This procedure takes labelNames and props and create a node
     *
     * @param labelName
     * @param props
     * @return  A RelationshipTypes instance with the relations (incoming and outgoing) for a given node.
     */
    @Procedure(mode = Mode.WRITE)
    @Description("apoc.create.node(['Label'], {key:value,...}) - create node with dynamic labels")
    public Stream<NodeResult> node(@Name("labelName") String labelName, @Name("props") Map<String, Object> props) {

        // create a node with label `labelName`
        final Node node = tx.createNode(Label.label(labelName));
        
        // set properties
        setProperties(node, props);
        
        // NB: the procedures must return Stream<Result>
        // return Stream of class 
        return Stream.of(new NodeResult(node));
    }

    // set properties
    public static  <T extends Entity> void setProperties(T pc, Map<String, Object> p) {
        if (p == null) return;
        for (Map.Entry<String, Object> entry : p.entrySet()) {
            pc.setProperty(entry.getKey(), entry.getValue());
        }
    }
    

    /**
     * This is the output record for our search procedure. All procedures
     * that return results return them as a Stream of Records, where the
     * records are defined like this one - customized to fit what the procedure
     * is returning.
     * <p>
     * These classes can only have public fields, 
     * and the fields must be one of the following types:
     *
     * <ul>
     *     <li>{@link String}</li>
     *     <li>{@link Long} or {@code long}</li>
     *     <li>{@link Double} or {@code double}</li>
     *     <li>{@link Number}</li>
     *     <li>{@link Boolean} or {@code boolean}</li>
     *     <li>{@link Node}</li>
     *     <li>{@link org.neo4j.graphdb.Relationship}</li>
     *     <li>{@link org.neo4j.graphdb.Path}</li>
     *     <li>{@link Map} with key {@link String} and value {@link Object}</li>
     *     <li>{@link List} of elements of any valid field type, including {@link List}</li>
     *     
     *     !! -- SET NOT ALLOWED
     *     
     *     <li>{@link Object}, meaning any of the valid field types</li>
     * </ul>
     */
    
    // in this case we can do call custom.proc(....) YIELD value
    // se the YIELDed values are the class attributes
    public static class LongResult {
        public final Long value;

        public LongResult(Long value) {
            this.value = value;
        }
    }

    // in this case we can do call custom.proc(....) YIELD node
    public static class NodeResult {
        public final Node node;

        public NodeResult(Node node) {
            this.node = node;
        }
    }

    // in this case we can do call custom.proc(....) YIELD key, value
    public static class KeyValueResult {
        public final String key;
        public final Object value;

        public KeyValueResult(String key, Object value) {
            this.key = key;
            this.value = value;
        }
    }
    
    
    
    // TODO - create a procedure with name `my.procedure(node :: LIST OF NODE, props :: MAP, myLabel :: STRING )` 
    //  which add `props` and `myLabel` to each node
    //  and then return a stream of nodes
    //  using node.addLabel(Label.label(myLabel))
    @Procedure("my.procedure")
    @Description("fa cosee...")
    public Stream<NodeResult> aaaaaaaa(@Name("node") List<Node> nodeList, 
                                       @Name("props") Map<String, Object> props,
                                       @Name("myLabel") String myLabel) {
        return nodeList.stream()
                .map(node -> {
                    node.addLabel(Label.label(myLabel));
                    setProperties(node, props);
                    return new NodeResult(node);
                });
    }

    
}
