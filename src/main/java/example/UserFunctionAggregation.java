package example;

import org.neo4j.procedure.*;

/**
 * This is an example how you can create a simple user-defined function for Neo4j.
 */
public class UserFunctionAggregation {
    
    // To create aggregation function, i.e. from multiple value to 1 value
    // For example the avg([...]), collect(...) functs
    
    // 
    @UserAggregationFunction("example.last")
    @Description("example.last(value) - returns last non-null row")
    // Note: no arguments here...
    public MaxPlusOneFunction last() {
        return new MaxPlusOneFunction();
    }


    public static class LastFunction {

        // the value to return
        private Object lastValue;

        // the current value, e.g 1,2,3 --> will execute the aggregate(...) for each item (1,2 and 3)
        // and will return 3 (lastValue)
        @UserAggregationUpdate
        public void aggregate(@Name("value") Object value) {
            if (value != null) {
                this.lastValue = value;
            }
        }

        @UserAggregationResult
        public Object result() {
            return lastValue;
        }
    }
    
    
    // TODO - exercise
    // create an UserAggregationFunction with name `max.plus.one`
    // which calculate the `max value + 1` from a set of longs 
    
    @UserAggregationFunction("max.plus.one")
    @Description("blah blah...")
    // Note: no arguments here...
    public MaxPlusOneFunction maxPlusOneFunction() {
        return new MaxPlusOneFunction();
    }


    public static class MaxPlusOneFunction {

        // the value to return
        private long maxValue;

        // the current value, e.g 1,2,3 --> will execute the aggregate(...) for each item (1,2 and 3)
        // and will return 3 (lastValue)
        @UserAggregationUpdate
        public void aggregate(@Name("value") long value) {
            if (value > maxValue) {
                this.maxValue = value;
            }
        }

        @UserAggregationResult
        public Object result() {
            return maxValue + 1;
        }
    }
    

}