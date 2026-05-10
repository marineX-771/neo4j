// https://neo4j.github.io/console-guides/movie-graph-guide/movie-model.png


///////////////////////////////////////////////////////////
// Find nodes
///////////////////////////////////////////////////////////
// To see a subset of the imported data run the following statement
MATCH (person:Person {name: 'Tom Hanks'}) MATCH path = (person)-[:ACTED_IN]->(m)<-[:DIRECTED]-(d) RETURN path;

// If you want to find movies released in a specific timespan, you can add conditions by using WHERE:
MATCH (m:Movie) WHERE m.released >= 1990 AND m.released < 2000 RETURN m.title, m.released;


///////////////////////////////////////////////////////////
// Find patterns
///////////////////////////////////////////////////////////
// To find which movies Tom Hanks have acted in, specify the pattern as follows:
MATCH (p:Person {name: "Tom Hanks"})-[:ACTED_IN]->(m:Movie) RETURN m.title;

// Can you specify a pattern to find who directed Cloud Atlas? Hint: The relationship between a person who is a director and the movie they directed is :DIRECTED.
MATCH (m:Movie {title: "Cloud Atlas"})<-[:DIRECTED]-(director:Person) RETURN director.name;
MATCH (director:Person)-[:DIRECTED]->(m:Movie {title: "Cloud Atlas"}) RETURN director.name;

// If you extend the length of the pattern, you can find co-actors:
MATCH (:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors) RETURN coActors.name;

// If you extend the length of the pattern, you can find co-actors:
MATCH path= (person:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors)
RETURN path;

MATCH (person:Person {name: 'Tom Hanks'})
MATCH path = (person)-[:ACTED_IN]->(m)<-[:ACTED_IN]-(d)
RETURN path;
