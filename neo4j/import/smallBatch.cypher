:begin
CREATE INDEX ON :Movie(title);
CREATE CONSTRAINT ON (node:Person) ASSERT (node.name) IS UNIQUE;
CREATE CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
:commit
CALL db.awaitIndexes(300);
:begin
UNWIND [{_id:0, properties:{tagline:"My carpenter with 30 thousand lire did it better", title:"3 men and 1 leg", released:0}}, {_id:1, properties:{tagline:"Welcome to the Real World", title:"The Matrix", released:1999}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:10, properties:{tagline:"Free your mind", title:"The Matrix Reloaded", released:2003}}, {_id:11, properties:{tagline:"Everything that has a beginning has an end", title:"The Matrix Revolutions", released:2003}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:12, properties:{tagline:"Evil has its winning ways", title:"The Devil's Advocate", released:1997}}, {_id:16, properties:{tagline:"In the heart of the nation's capital, in a courthouse of the U.S. government, one man will stop at nothing to keep his honor, and one will stop at nothing to find the truth.", title:"A Few Good Men", released:1992}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:30, properties:{tagline:"I feel the need, the need for speed.", title:"Top Gun", released:1986}}, {_id:38, properties:{tagline:"The rest of his life begins now.", title:"Jerry Maguire", released:2000}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:47, properties:{tagline:"For some, it's the last real taste of innocence, and the first real taste of life. But for everyone, it's the time that memories are made of.", title:"Stand By Me", released:1986}}, {_id:53, properties:{tagline:"A comedy from the heart that goes for the throat.", title:"As Good as It Gets", released:1997}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:57, properties:{tagline:"After life there is more. The end is just the beginning.", title:"What Dreams May Come", released:1998}}, {_id:63, properties:{tagline:"First loves last. Forever.", title:"Snow Falling on Cedars", released:1999}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:68, properties:{tagline:"At odds in life... in love on-line.", title:"You've Got Mail", released:1998}}, {_id:74, properties:{tagline:"What if someone you never met, someone you never saw, someone you never knew was the only someone for you?", title:"Sleepless in Seattle", released:1993}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:79, properties:{tagline:"A story of love, lava and burning desire.", title:"Joe Versus the Volcano", released:1990}}, {_id:82, properties:{tagline:"Can two friends sleep together and still love each other in the morning?", title:"When Herry Met Sally", released:1998}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:86, properties:{tagline:"In every life there comes a time when that thing you dream becomes that thing you do", title:"That Thing You Do", released:1996}}, {_id:88, properties:{tagline:"Pain heals, Chicks dig scars... Glory lasts forever", title:"The Replacements", released:2000}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:93, properties:{tagline:"Based on the extraordinary true story of one man's fight for freedom", title:"RescueDawn", released:2006}}, {_id:96, properties:{tagline:"Come as you are", title:"The Birdcage", released:1996}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:98, properties:{tagline:"It's a hell of a thing, killing a man", title:"Unforgiven", released:1992}}, {_id:101, properties:{tagline:"The hottest data on earth. In the coolest head in town", title:"Johnny Mnemonic", released:1995}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:106, properties:{tagline:"Everything is connected", title:"Cloud Atlas", released:2012}}, {_id:112, properties:{tagline:"Break The Codes", title:"The Da Vinci Code", released:2006}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:117, properties:{tagline:"Freedom! Forever!", title:"V for Vendetta", released:2006}}, {_id:122, properties:{tagline:"Speed has no limits", title:"Speed Racer", released:2008}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:129, properties:{tagline:"Prepare to enter a secret world of assassins", title:"Ninja Assassin", released:2009}}, {_id:131, properties:{tagline:"Walk a mile you'll never forget.", title:"The Green Mile", released:1999}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:138, properties:{tagline:"400 million people were waiting for the truth.", title:"Frost/Nixon", released:2008}}, {_id:142, properties:{tagline:"He didn't want law. He wanted justice.", title:"Hoffa", released:1992}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:145, properties:{tagline:"Houston, we have a problem.", title:"Apollo 13", released:1995}}, {_id:148, properties:{tagline:"Don't Breathe. Don't Look Back.", title:"Twister", released:1996}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:151, properties:{tagline:"At the edge of the world, his journey begins.", title:"Cast Away", released:2000}}, {_id:153, properties:{tagline:"If he's crazy, what does that make you?", title:"One Flew Over the Cuckoo's Nest", released:1975}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:155, properties:{title:"Something's Gotta Give", released:2003}}, {_id:158, properties:{tagline:"One robot's 200 year journey to become an ordinary man.", title:"Bicentennial Man", released:1999}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:160, properties:{tagline:"A stiff drink. A little mascara. A lot of nerve. Who said they couldn't bring down the Soviet empire.", title:"Charlie Wilson's War", released:2007}}, {_id:162, properties:{tagline:"This Holiday Season... Believe", title:"The Polar Express", released:2004}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:163, properties:{tagline:"Once in a lifetime you get a chance to do something different.", title:"A League of Their Own", released:1992}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{name:"Giandomenico Fracchia", properties:{born:1964}}, {name:"Carrie-Anne Moss", properties:{children:["Al", "John", "Jack"], born:1967}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Laurence Fishburne", properties:{children:["Naruto", "Sasuke", "Sakura"], born:1961}}, {name:"Hugo Weaving", properties:{born:1960}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Lilly Wachowski", properties:{born:1967}}, {name:"Lana Wachowski", properties:{born:1965}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Franco e Ciccio", properties:{born:1952}}, {name:"Emil Eifrem", properties:{born:1978}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Charlize Theron", properties:{born:1975}}, {name:"Al Pacino", properties:{born:1940}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Taylor Hackford", properties:{born:1944}}, {name:"Tom Cruise", properties:{born:1962}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Jack Nicholson", properties:{born:1937}}, {name:"Demi Moore", properties:{born:1962}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Kevin Bacon", properties:{born:1958}}, {name:"Kiefer Sutherland", properties:{born:1966}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Noah Wyle", properties:{born:1971}}, {name:"Cuba Gooding Jr.", properties:{born:1968}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Kevin Pollak", properties:{born:1957}}, {name:"J.T. Walsh", properties:{born:1943}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"James Marshall", properties:{born:1967}}, {name:"Christopher Guest", properties:{born:1948}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Rob Reiner", properties:{born:1947}}, {name:"Aaron Sorkin", properties:{born:1961}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Kelly McGillis", properties:{born:1957}}, {name:"Val Kilmer", properties:{born:1959}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Anthony Edwards", properties:{born:1962}}, {name:"Tom Skerritt", properties:{born:1933}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Meg Ryan", properties:{born:1961}}, {name:"Tony Scott", properties:{born:1944}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Jim Cash", properties:{born:1941}}, {name:"Renee Zellweger", properties:{born:1969}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Kelly Preston", properties:{born:1962}}, {name:"Jerry O'Connell", properties:{born:1974}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Jay Mohr", properties:{born:1970}}, {name:"Bonnie Hunt", properties:{born:1961}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Regina King", properties:{born:1971}}, {name:"Jonathan Lipnicki", properties:{born:1996}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Cameron Crowe", properties:{born:1957}}, {name:"River Phoenix", properties:{born:1970}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Corey Feldman", properties:{born:1971}}, {name:"Wil Wheaton", properties:{born:1972}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"John Cusack", properties:{born:1966}}, {name:"Marshall Bell", properties:{born:1942}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Helen Hunt", properties:{born:1963}}, {name:"Greg Kinnear", properties:{born:1963}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"James L. Brooks", properties:{born:1940}}, {name:"Annabella Sciorra", properties:{born:1960}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Max von Sydow", properties:{born:1929}}, {name:"Werner Herzog", properties:{born:1942}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Robin Williams", properties:{born:1951}}, {name:"Vincent Ward", properties:{born:1956}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Ethan Hawke", properties:{born:1970}}, {name:"Rick Yune", properties:{born:1971}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"James Cromwell", properties:{born:1940}}, {name:"Scott Hicks", properties:{born:1953}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Parker Posey", properties:{born:1968}}, {name:"Dave Chappelle", properties:{born:1973}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Steve Zahn", properties:{born:1967}}, {name:"Tom Hanks", properties:{born:1956}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Nora Ephron", properties:{born:1941}}, {name:"Rita Wilson", properties:{born:1956}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Bill Pullman", properties:{born:1953}}, {name:"Victor Garber", properties:{born:1949}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Rosie O'Donnell", properties:{born:1962}}, {name:"John Patrick Stanley", properties:{born:1950}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Nathan Lane", properties:{born:1956}}, {name:"Billy Crystal", properties:{born:1948}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Carrie Fisher", properties:{born:1956}}, {name:"Bruno Kirby", properties:{born:1949}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Liv Tyler", properties:{born:1977}}, {name:"Brooke Langton", properties:{born:1970}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Gene Hackman", properties:{born:1929}}, {name:"Orlando Jones", properties:{born:1968}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Howard Deutch", properties:{born:1950}}, {name:"Christian Bale", properties:{born:1974}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Zach Grenier", properties:{born:1954}}, {name:"Mike Nichols", properties:{born:1931}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Richard Harris", properties:{born:1930}}, {name:"Clint Eastwood", properties:{born:1930}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Takeshi Kitano", properties:{born:1947}}, {name:"Dina Meyer", properties:{born:1968}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Ice-T", properties:{born:1958}}, {name:"Robert Longo", properties:{born:1953}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Halle Berry", properties:{born:1966}}, {name:"Jim Broadbent", properties:{born:1949}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Tom Tykwer", properties:{born:1965}}, {name:"David Mitchell", properties:{born:1969}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Stefan Arndt", properties:{born:1961}}, {name:"Ian McKellen", properties:{born:1939}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Audrey Tautou", properties:{born:1976}}, {name:"Paul Bettany", properties:{born:1971}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Ron Howard", properties:{born:1954}}, {name:"Natalie Portman", properties:{born:1981}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Stephen Rea", properties:{born:1946}}, {name:"John Hurt", properties:{born:1940}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Ben Miles", properties:{born:1967}}, {name:"Emile Hirsch", properties:{born:1985}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"John Goodman", properties:{born:1960}}, {name:"Susan Sarandon", properties:{born:1946}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Matthew Fox", properties:{born:1966}}, {name:"Christina Ricci", properties:{born:1980}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Rain", properties:{born:1982}}, {name:"Naomie Harris", properties:{}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Michael Clarke Duncan", properties:{born:1957}}, {name:"David Morse", properties:{born:1953}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Sam Rockwell", properties:{born:1968}}, {name:"Gary Sinise", properties:{born:1955}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Patricia Clarkson", properties:{born:1959}}, {name:"Frank Darabont", properties:{born:1959}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Frank Langella", properties:{born:1938}}, {name:"Michael Sheen", properties:{born:1969}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Oliver Platt", properties:{born:1960}}, {name:"Danny DeVito", properties:{born:1944}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"John C. Reilly", properties:{born:1965}}, {name:"Ed Harris", properties:{born:1950}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Bill Paxton", properties:{born:1955}}, {name:"Philip Seymour Hoffman", properties:{born:1967}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Jan de Bont", properties:{born:1943}}, {name:"Robert Zemeckis", properties:{born:1951}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Milos Forman", properties:{born:1932}}, {name:"Diane Keaton", properties:{born:1946}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Nancy Meyers", properties:{born:1949}}, {name:"Chris Columbus", properties:{born:1958}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Julia Roberts", properties:{born:1967}}, {name:"Madonna", properties:{born:1954}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Geena Davis", properties:{born:1956}}, {name:"Lori Petty", properties:{born:1963}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Penny Marshall", properties:{born:1943}}, {name:"Paul Blythe", properties:{}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Angela Scope", properties:{}}, {name:"Jessica Thompson", properties:{}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"James Thompson", properties:{}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
:commit
:begin
UNWIND [{start: {name:"Lilly Wachowski"}, end: {_id:1}, properties:{}}, {start: {name:"Lana Wachowski"}, end: {_id:1}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lilly Wachowski"}, end: {_id:10}, properties:{}}, {start: {name:"Lana Wachowski"}, end: {_id:10}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lilly Wachowski"}, end: {_id:11}, properties:{}}, {start: {name:"Lana Wachowski"}, end: {_id:11}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Taylor Hackford"}, end: {_id:12}, properties:{}}, {start: {name:"Rob Reiner"}, end: {_id:16}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tony Scott"}, end: {_id:30}, properties:{}}, {start: {name:"Cameron Crowe"}, end: {_id:38}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Rob Reiner"}, end: {_id:47}, properties:{}}, {start: {name:"James L. Brooks"}, end: {_id:53}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Vincent Ward"}, end: {_id:57}, properties:{}}, {start: {name:"Scott Hicks"}, end: {_id:63}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Nora Ephron"}, end: {_id:68}, properties:{}}, {start: {name:"Nora Ephron"}, end: {_id:74}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"John Patrick Stanley"}, end: {_id:79}, properties:{}}, {start: {name:"Rob Reiner"}, end: {_id:82}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Hanks"}, end: {_id:86}, properties:{}}, {start: {name:"Howard Deutch"}, end: {_id:88}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Werner Herzog"}, end: {_id:93}, properties:{}}, {start: {name:"Mike Nichols"}, end: {_id:96}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Clint Eastwood"}, end: {_id:98}, properties:{}}, {start: {name:"Robert Longo"}, end: {_id:101}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Tykwer"}, end: {_id:106}, properties:{}}, {start: {name:"Lilly Wachowski"}, end: {_id:106}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lana Wachowski"}, end: {_id:106}, properties:{}}, {start: {name:"Ron Howard"}, end: {_id:112}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"James Marshall"}, end: {_id:117}, properties:{}}, {start: {name:"Lilly Wachowski"}, end: {_id:122}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lana Wachowski"}, end: {_id:122}, properties:{}}, {start: {name:"James Marshall"}, end: {_id:129}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Frank Darabont"}, end: {_id:131}, properties:{}}, {start: {name:"Ron Howard"}, end: {_id:138}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Danny DeVito"}, end: {_id:142}, properties:{}}, {start: {name:"Ron Howard"}, end: {_id:145}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jan de Bont"}, end: {_id:148}, properties:{}}, {start: {name:"Robert Zemeckis"}, end: {_id:151}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Milos Forman"}, end: {_id:153}, properties:{}}, {start: {name:"Nancy Meyers"}, end: {_id:155}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Chris Columbus"}, end: {_id:158}, properties:{}}, {start: {name:"Mike Nichols"}, end: {_id:160}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Robert Zemeckis"}, end: {_id:162}, properties:{}}, {start: {name:"Penny Marshall"}, end: {_id:163}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {name:"James Thompson"}, end: {name:"Jessica Thompson"}, properties:{}}, {start: {name:"Angela Scope"}, end: {name:"Jessica Thompson"}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:Person{name: row.end.name})
CREATE (start)-[r:FOLLOWS]->(end) SET r += row.properties;
UNWIND [{start: {name:"Paul Blythe"}, end: {name:"Angela Scope"}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:Person{name: row.end.name})
CREATE (start)-[r:FOLLOWS]->(end) SET r += row.properties;
UNWIND [{start: {name:"Franco e Ciccio"}, end: {_id:1}, properties:{}}, {start: {name:"Franco e Ciccio"}, end: {_id:10}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Franco e Ciccio"}, end: {_id:11}, properties:{}}, {start: {name:"Cameron Crowe"}, end: {_id:38}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Rob Reiner"}, end: {_id:82}, properties:{}}, {start: {name:"Nora Ephron"}, end: {_id:82}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Stefan Arndt"}, end: {_id:106}, properties:{}}, {start: {name:"Lilly Wachowski"}, end: {_id:117}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lana Wachowski"}, end: {_id:117}, properties:{}}, {start: {name:"Franco e Ciccio"}, end: {_id:117}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Franco e Ciccio"}, end: {_id:122}, properties:{}}, {start: {name:"Lilly Wachowski"}, end: {_id:129}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lana Wachowski"}, end: {_id:129}, properties:{}}, {start: {name:"Franco e Ciccio"}, end: {_id:129}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Nancy Meyers"}, end: {_id:155}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Aaron Sorkin"}, end: {_id:16}, properties:{}}, {start: {name:"Jim Cash"}, end: {_id:30}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WROTE]->(end) SET r += row.properties;
UNWIND [{start: {name:"Cameron Crowe"}, end: {_id:38}, properties:{}}, {start: {name:"Nora Ephron"}, end: {_id:82}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WROTE]->(end) SET r += row.properties;
UNWIND [{start: {name:"David Mitchell"}, end: {_id:106}, properties:{}}, {start: {name:"Lilly Wachowski"}, end: {_id:117}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WROTE]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lana Wachowski"}, end: {_id:117}, properties:{}}, {start: {name:"Lilly Wachowski"}, end: {_id:122}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WROTE]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lana Wachowski"}, end: {_id:122}, properties:{}}, {start: {name:"Nancy Meyers"}, end: {_id:155}, properties:{}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WROTE]->(end) SET r += row.properties;
UNWIND [{start: {name:"Giandomenico Fracchia"}, end: {_id:1}, properties:{roles:["Neo"]}}, {start: {name:"Carrie-Anne Moss"}, end: {_id:1}, properties:{roles:["Trinity"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Laurence Fishburne"}, end: {_id:1}, properties:{roles:["Morpheus"]}}, {start: {name:"Hugo Weaving"}, end: {_id:1}, properties:{roles:["Agent Smith"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Emil Eifrem"}, end: {_id:1}, properties:{roles:["Emil"]}}, {start: {name:"Giandomenico Fracchia"}, end: {_id:10}, properties:{roles:["Neo"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Carrie-Anne Moss"}, end: {_id:10}, properties:{roles:["Trinity"]}}, {start: {name:"Laurence Fishburne"}, end: {_id:10}, properties:{roles:["Morpheus"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Hugo Weaving"}, end: {_id:10}, properties:{roles:["Agent Smith"]}}, {start: {name:"Giandomenico Fracchia"}, end: {_id:11}, properties:{roles:["Neo"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Carrie-Anne Moss"}, end: {_id:11}, properties:{roles:["Trinity"]}}, {start: {name:"Laurence Fishburne"}, end: {_id:11}, properties:{roles:["Morpheus"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Hugo Weaving"}, end: {_id:11}, properties:{roles:["Agent Smith"]}}, {start: {name:"Giandomenico Fracchia"}, end: {_id:12}, properties:{roles:["Kevin Lomax"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Charlize Theron"}, end: {_id:12}, properties:{roles:["Mary Ann Lomax"]}}, {start: {name:"Al Pacino"}, end: {_id:12}, properties:{roles:["John Milton"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Cruise"}, end: {_id:16}, properties:{roles:["Lt. Daniel Kaffee"]}}, {start: {name:"Jack Nicholson"}, end: {_id:16}, properties:{roles:["Col. Nathan R. Jessup"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Demi Moore"}, end: {_id:16}, properties:{roles:["Lt. Cdr. JoAnne Galloway"]}}, {start: {name:"Kevin Bacon"}, end: {_id:16}, properties:{roles:["Capt. Jack Ross"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Kiefer Sutherland"}, end: {_id:16}, properties:{roles:["Lt. Jonathan Kendrick"]}}, {start: {name:"Noah Wyle"}, end: {_id:16}, properties:{roles:["Cpl. Jeffrey Barnes"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Cuba Gooding Jr."}, end: {_id:16}, properties:{roles:["Cpl. Carl Hammaker"]}}, {start: {name:"Kevin Pollak"}, end: {_id:16}, properties:{roles:["Lt. Sam Weinberg"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"J.T. Walsh"}, end: {_id:16}, properties:{roles:["Lt. Col. Matthew Andrew Markinson"]}}, {start: {name:"James Marshall"}, end: {_id:16}, properties:{roles:["Pfc. Louden Downey"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Christopher Guest"}, end: {_id:16}, properties:{roles:["Dr. Stone"]}}, {start: {name:"Aaron Sorkin"}, end: {_id:16}, properties:{roles:["Man in Bar"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Cruise"}, end: {_id:30}, properties:{roles:["Maverick"]}}, {start: {name:"Kelly McGillis"}, end: {_id:30}, properties:{roles:["Charlie"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Val Kilmer"}, end: {_id:30}, properties:{roles:["Iceman"]}}, {start: {name:"Anthony Edwards"}, end: {_id:30}, properties:{roles:["Goose"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Skerritt"}, end: {_id:30}, properties:{roles:["Viper"]}}, {start: {name:"Meg Ryan"}, end: {_id:30}, properties:{roles:["Carole"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Cruise"}, end: {_id:38}, properties:{roles:["Jerry Maguire"]}}, {start: {name:"Cuba Gooding Jr."}, end: {_id:38}, properties:{roles:["Rod Tidwell"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Renee Zellweger"}, end: {_id:38}, properties:{roles:["Dorothy Boyd"]}}, {start: {name:"Kelly Preston"}, end: {_id:38}, properties:{roles:["Avery Bishop"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jerry O'Connell"}, end: {_id:38}, properties:{roles:["Frank Cushman"]}}, {start: {name:"Jay Mohr"}, end: {_id:38}, properties:{roles:["Bob Sugar"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Bonnie Hunt"}, end: {_id:38}, properties:{roles:["Laurel Boyd"]}}, {start: {name:"Regina King"}, end: {_id:38}, properties:{roles:["Marcee Tidwell"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jonathan Lipnicki"}, end: {_id:38}, properties:{roles:["Ray Boyd"]}}, {start: {name:"Wil Wheaton"}, end: {_id:47}, properties:{roles:["Gordie Lachance"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"River Phoenix"}, end: {_id:47}, properties:{roles:["Chris Chambers"]}}, {start: {name:"Jerry O'Connell"}, end: {_id:47}, properties:{roles:["Vern Tessio"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Corey Feldman"}, end: {_id:47}, properties:{roles:["Teddy Duchamp"]}}, {start: {name:"John Cusack"}, end: {_id:47}, properties:{roles:["Denny Lachance"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Kiefer Sutherland"}, end: {_id:47}, properties:{roles:["Ace Merrill"]}}, {start: {name:"Marshall Bell"}, end: {_id:47}, properties:{roles:["Mr. Lachance"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jack Nicholson"}, end: {_id:53}, properties:{roles:["Melvin Udall"]}}, {start: {name:"Helen Hunt"}, end: {_id:53}, properties:{roles:["Carol Connelly"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Greg Kinnear"}, end: {_id:53}, properties:{roles:["Simon Bishop"]}}, {start: {name:"Cuba Gooding Jr."}, end: {_id:53}, properties:{roles:["Frank Sachs"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Robin Williams"}, end: {_id:57}, properties:{roles:["Chris Nielsen"]}}, {start: {name:"Cuba Gooding Jr."}, end: {_id:57}, properties:{roles:["Albert Lewis"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Annabella Sciorra"}, end: {_id:57}, properties:{roles:["Annie Collins-Nielsen"]}}, {start: {name:"Max von Sydow"}, end: {_id:57}, properties:{roles:["The Tracker"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Werner Herzog"}, end: {_id:57}, properties:{roles:["The Face"]}}, {start: {name:"Ethan Hawke"}, end: {_id:63}, properties:{roles:["Ishmael Chambers"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Rick Yune"}, end: {_id:63}, properties:{roles:["Kazuo Miyamoto"]}}, {start: {name:"Max von Sydow"}, end: {_id:63}, properties:{roles:["Nels Gudmundsson"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"James Cromwell"}, end: {_id:63}, properties:{roles:["Judge Fielding"]}}, {start: {name:"Tom Hanks"}, end: {_id:68}, properties:{roles:["Joe Fox"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Meg Ryan"}, end: {_id:68}, properties:{roles:["Kathleen Kelly"]}}, {start: {name:"Greg Kinnear"}, end: {_id:68}, properties:{roles:["Frank Navasky"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Parker Posey"}, end: {_id:68}, properties:{roles:["Patricia Eden"]}}, {start: {name:"Dave Chappelle"}, end: {_id:68}, properties:{roles:["Kevin Jackson"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Steve Zahn"}, end: {_id:68}, properties:{roles:["George Pappas"]}}, {start: {name:"Tom Hanks"}, end: {_id:74}, properties:{roles:["Sam Baldwin"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Meg Ryan"}, end: {_id:74}, properties:{roles:["Annie Reed"]}}, {start: {name:"Rita Wilson"}, end: {_id:74}, properties:{roles:["Suzy"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Bill Pullman"}, end: {_id:74}, properties:{roles:["Walter"]}}, {start: {name:"Victor Garber"}, end: {_id:74}, properties:{roles:["Greg"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Rosie O'Donnell"}, end: {_id:74}, properties:{roles:["Becky"]}}, {start: {name:"Tom Hanks"}, end: {_id:79}, properties:{roles:["Joe Banks"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Meg Ryan"}, end: {_id:79}, properties:{roles:["DeDe", "Angelica Graynamore", "Patricia Graynamore"]}}, {start: {name:"Nathan Lane"}, end: {_id:79}, properties:{roles:["Baw"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Billy Crystal"}, end: {_id:82}, properties:{roles:["Harry Burns"]}}, {start: {name:"Meg Ryan"}, end: {_id:82}, properties:{roles:["Sally Albright"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Carrie Fisher"}, end: {_id:82}, properties:{roles:["Marie"]}}, {start: {name:"Bruno Kirby"}, end: {_id:82}, properties:{roles:["Jess"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Hanks"}, end: {_id:86}, properties:{roles:["Mr. White"]}}, {start: {name:"Liv Tyler"}, end: {_id:86}, properties:{roles:["Faye Dolan"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Charlize Theron"}, end: {_id:86}, properties:{roles:["Tina"]}}, {start: {name:"Giandomenico Fracchia"}, end: {_id:88}, properties:{roles:["Shane Falco"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Brooke Langton"}, end: {_id:88}, properties:{roles:["Annabelle Farrell"]}}, {start: {name:"Gene Hackman"}, end: {_id:88}, properties:{roles:["Jimmy McGinty"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Orlando Jones"}, end: {_id:88}, properties:{roles:["Clifford Franklin"]}}, {start: {name:"Marshall Bell"}, end: {_id:93}, properties:{roles:["Admiral"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Christian Bale"}, end: {_id:93}, properties:{roles:["Dieter Dengler"]}}, {start: {name:"Zach Grenier"}, end: {_id:93}, properties:{roles:["Squad Leader"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Steve Zahn"}, end: {_id:93}, properties:{roles:["Duane"]}}, {start: {name:"Robin Williams"}, end: {_id:96}, properties:{roles:["Armand Goldman"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Nathan Lane"}, end: {_id:96}, properties:{roles:["Albert Goldman"]}}, {start: {name:"Gene Hackman"}, end: {_id:96}, properties:{roles:["Sen. Kevin Keeley"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Richard Harris"}, end: {_id:98}, properties:{roles:["English Bob"]}}, {start: {name:"Clint Eastwood"}, end: {_id:98}, properties:{roles:["Bill Munny"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Gene Hackman"}, end: {_id:98}, properties:{roles:["Little Bill Daggett"]}}, {start: {name:"Giandomenico Fracchia"}, end: {_id:101}, properties:{roles:["Johnny Mnemonic"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Takeshi Kitano"}, end: {_id:101}, properties:{roles:["Takahashi"]}}, {start: {name:"Dina Meyer"}, end: {_id:101}, properties:{roles:["Jane"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Ice-T"}, end: {_id:101}, properties:{roles:["J-Bone"]}}, {start: {name:"Tom Hanks"}, end: {_id:106}, properties:{roles:["Zachry", "Dr. Henry Goose", "Isaac Sachs", "Dermot Hoggins"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Hugo Weaving"}, end: {_id:106}, properties:{roles:["Bill Smoke", "Haskell Moore", "Tadeusz Kesselring", "Nurse Noakes", "Boardman Mephi", "Old Georgie"]}}, {start: {name:"Halle Berry"}, end: {_id:106}, properties:{roles:["Luisa Rey", "Jocasta Ayrs", "Ovid", "Meronym"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jim Broadbent"}, end: {_id:106}, properties:{roles:["Vyvyan Ayrs", "Captain Molyneux", "Timothy Cavendish"]}}, {start: {name:"Tom Hanks"}, end: {_id:112}, properties:{roles:["Dr. Robert Langdon"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Ian McKellen"}, end: {_id:112}, properties:{roles:["Sir Leight Teabing"]}}, {start: {name:"Audrey Tautou"}, end: {_id:112}, properties:{roles:["Sophie Neveu"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Paul Bettany"}, end: {_id:112}, properties:{roles:["Silas"]}}, {start: {name:"Hugo Weaving"}, end: {_id:117}, properties:{roles:["V"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Natalie Portman"}, end: {_id:117}, properties:{roles:["Evey Hammond"]}}, {start: {name:"Stephen Rea"}, end: {_id:117}, properties:{roles:["Eric Finch"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"John Hurt"}, end: {_id:117}, properties:{roles:["High Chancellor Adam Sutler"]}}, {start: {name:"Ben Miles"}, end: {_id:117}, properties:{roles:["Dascomb"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Emile Hirsch"}, end: {_id:122}, properties:{roles:["Speed Racer"]}}, {start: {name:"John Goodman"}, end: {_id:122}, properties:{roles:["Pops"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Susan Sarandon"}, end: {_id:122}, properties:{roles:["Mom"]}}, {start: {name:"Matthew Fox"}, end: {_id:122}, properties:{roles:["Racer X"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Christina Ricci"}, end: {_id:122}, properties:{roles:["Trixie"]}}, {start: {name:"Rain"}, end: {_id:122}, properties:{roles:["Taejo Togokahn"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Ben Miles"}, end: {_id:122}, properties:{roles:["Cass Jones"]}}, {start: {name:"Rain"}, end: {_id:129}, properties:{roles:["Raizo"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Naomie Harris"}, end: {_id:129}, properties:{roles:["Mika Coretti"]}}, {start: {name:"Rick Yune"}, end: {_id:129}, properties:{roles:["Takeshi"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Ben Miles"}, end: {_id:129}, properties:{roles:["Ryan Maslow"]}}, {start: {name:"Tom Hanks"}, end: {_id:131}, properties:{roles:["Paul Edgecomb"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Michael Clarke Duncan"}, end: {_id:131}, properties:{roles:["John Coffey"]}}, {start: {name:"David Morse"}, end: {_id:131}, properties:{roles:["Brutus \"Brutal\" Howell"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Bonnie Hunt"}, end: {_id:131}, properties:{roles:["Jan Edgecomb"]}}, {start: {name:"James Cromwell"}, end: {_id:131}, properties:{roles:["Warden Hal Moores"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Sam Rockwell"}, end: {_id:131}, properties:{roles:["\"Wild Bill\" Wharton"]}}, {start: {name:"Gary Sinise"}, end: {_id:131}, properties:{roles:["Burt Hammersmith"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Patricia Clarkson"}, end: {_id:131}, properties:{roles:["Melinda Moores"]}}, {start: {name:"Frank Langella"}, end: {_id:138}, properties:{roles:["Richard Nixon"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Michael Sheen"}, end: {_id:138}, properties:{roles:["David Frost"]}}, {start: {name:"Kevin Bacon"}, end: {_id:138}, properties:{roles:["Jack Brennan"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Oliver Platt"}, end: {_id:138}, properties:{roles:["Bob Zelnick"]}}, {start: {name:"Sam Rockwell"}, end: {_id:138}, properties:{roles:["James Reston, Jr."]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jack Nicholson"}, end: {_id:142}, properties:{roles:["Hoffa"]}}, {start: {name:"Danny DeVito"}, end: {_id:142}, properties:{roles:["Robert \"Bobby\" Ciaro"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"J.T. Walsh"}, end: {_id:142}, properties:{roles:["Frank Fitzsimmons"]}}, {start: {name:"John C. Reilly"}, end: {_id:142}, properties:{roles:["Peter \"Pete\" Connelly"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Hanks"}, end: {_id:145}, properties:{roles:["Jim Lovell"]}}, {start: {name:"Kevin Bacon"}, end: {_id:145}, properties:{roles:["Jack Swigert"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Ed Harris"}, end: {_id:145}, properties:{roles:["Gene Kranz"]}}, {start: {name:"Bill Paxton"}, end: {_id:145}, properties:{roles:["Fred Haise"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Gary Sinise"}, end: {_id:145}, properties:{roles:["Ken Mattingly"]}}, {start: {name:"Bill Paxton"}, end: {_id:148}, properties:{roles:["Bill Harding"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Helen Hunt"}, end: {_id:148}, properties:{roles:["Dr. Jo Harding"]}}, {start: {name:"Zach Grenier"}, end: {_id:148}, properties:{roles:["Eddie"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Philip Seymour Hoffman"}, end: {_id:148}, properties:{roles:["Dustin \"Dusty\" Davis"]}}, {start: {name:"Tom Hanks"}, end: {_id:151}, properties:{roles:["Chuck Noland"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Helen Hunt"}, end: {_id:151}, properties:{roles:["Kelly Frears"]}}, {start: {name:"Jack Nicholson"}, end: {_id:153}, properties:{roles:["Randle McMurphy"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Danny DeVito"}, end: {_id:153}, properties:{roles:["Martini"]}}, {start: {name:"Jack Nicholson"}, end: {_id:155}, properties:{roles:["Harry Sanborn"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Diane Keaton"}, end: {_id:155}, properties:{roles:["Erica Barry"]}}, {start: {name:"Giandomenico Fracchia"}, end: {_id:155}, properties:{roles:["Julian Mercer"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Robin Williams"}, end: {_id:158}, properties:{roles:["Andrew Marin"]}}, {start: {name:"Oliver Platt"}, end: {_id:158}, properties:{roles:["Rupert Burns"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Hanks"}, end: {_id:160}, properties:{roles:["Rep. Charlie Wilson"]}}, {start: {name:"Julia Roberts"}, end: {_id:160}, properties:{roles:["Joanne Herring"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Philip Seymour Hoffman"}, end: {_id:160}, properties:{roles:["Gust Avrakotos"]}}, {start: {name:"Tom Hanks"}, end: {_id:162}, properties:{roles:["Hero Boy", "Father", "Conductor", "Hobo", "Scrooge", "Santa Claus"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Tom Hanks"}, end: {_id:163}, properties:{roles:["Jimmy Dugan"]}}, {start: {name:"Geena Davis"}, end: {_id:163}, properties:{roles:["Dottie Hinson"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Lori Petty"}, end: {_id:163}, properties:{roles:["Kit Keller"]}}, {start: {name:"Rosie O'Donnell"}, end: {_id:163}, properties:{roles:["Doris Murphy"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Madonna"}, end: {_id:163}, properties:{roles:["\"All the Way\" Mae Mordabito"]}}, {start: {name:"Bill Paxton"}, end: {_id:163}, properties:{roles:["Bob Hinson"]}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jessica Thompson"}, end: {_id:106}, properties:{summary:"An amazing journey", rating:95}}, {start: {name:"Jessica Thompson"}, end: {_id:88}, properties:{summary:"Silly, but fun", rating:65}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REVIEWED]->(end) SET r += row.properties;
UNWIND [{start: {name:"James Thompson"}, end: {_id:88}, properties:{summary:"The coolest football movie ever", rating:100}}, {start: {name:"Angela Scope"}, end: {_id:88}, properties:{summary:"Pretty funny at times", rating:62}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REVIEWED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jessica Thompson"}, end: {_id:98}, properties:{summary:"Dark, but compelling", rating:85}}, {start: {name:"Jessica Thompson"}, end: {_id:96}, properties:{summary:"Slapstick redeemed only by the Robin Williams and Gene Hackman's stellar performances", rating:45}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REVIEWED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jessica Thompson"}, end: {_id:112}, properties:{summary:"A solid romp", rating:68}}, {start: {name:"James Thompson"}, end: {_id:112}, properties:{summary:"Fun, but a little far fetched", rating:65}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REVIEWED]->(end) SET r += row.properties;
UNWIND [{start: {name:"Jessica Thompson"}, end: {_id:38}, properties:{summary:"You had me at Jerry", rating:92}}] AS row
MATCH (start:Person{name: row.start.name})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REVIEWED]->(end) SET r += row.properties;
:commit
:begin
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
:commit
:begin
DROP CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
:commit
