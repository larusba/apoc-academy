UNWIND [{_id:0, properties:{tagline:"My carpenter with 30 thousand lire did it better", title:"3 men and 1 leg", released:0}}, {_id:1, properties:{tagline:"Welcome to the Real World", title:"The Matrix", released:1999}}, {_id:10, properties:{tagline:"Free your mind", title:"The Matrix Reloaded", released:2003}}, {_id:11, properties:{tagline:"Everything that has a beginning has an end", title:"The Matrix Revolutions", released:2003}}, {_id:12, properties:{tagline:"Evil has its winning ways", title:"The Devil's Advocate", released:1997}}, {_id:16, properties:{tagline:"In the heart of the nation's capital, in a courthouse of the U.S. government, one man will stop at nothing to keep his honor, and one will stop at nothing to find the truth.", title:"A Few Good Men", released:1992}}, {_id:30, properties:{tagline:"I feel the need, the need for speed.", title:"Top Gun", released:1986}}, {_id:38, properties:{tagline:"The rest of his life begins now.", title:"Jerry Maguire", released:2000}}, {_id:47, properties:{tagline:"For some, it's the last real taste of innocence, and the first real taste of life. But for everyone, it's the time that memories are made of.", title:"Stand By Me", released:1986}}, {_id:53, properties:{tagline:"A comedy from the heart that goes for the throat.", title:"As Good as It Gets", released:1997}}, {_id:57, properties:{tagline:"After life there is more. The end is just the beginning.", title:"What Dreams May Come", released:1998}}, {_id:63, properties:{tagline:"First loves last. Forever.", title:"Snow Falling on Cedars", released:1999}}, {_id:68, properties:{tagline:"At odds in life... in love on-line.", title:"You've Got Mail", released:1998}}, {_id:74, properties:{tagline:"What if someone you never met, someone you never saw, someone you never knew was the only someone for you?", title:"Sleepless in Seattle", released:1993}}, {_id:79, properties:{tagline:"A story of love, lava and burning desire.", title:"Joe Versus the Volcano", released:1990}}, {_id:82, properties:{tagline:"Can two friends sleep together and still love each other in the morning?", title:"When Herry Met Sally", released:1998}}, {_id:86, properties:{tagline:"In every life there comes a time when that thing you dream becomes that thing you do", title:"That Thing You Do", released:1996}}, {_id:88, properties:{tagline:"Pain heals, Chicks dig scars... Glory lasts forever", title:"The Replacements", released:2000}}, {_id:93, properties:{tagline:"Based on the extraordinary true story of one man's fight for freedom", title:"RescueDawn", released:2006}}, {_id:96, properties:{tagline:"Come as you are", title:"The Birdcage", released:1996}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:98, properties:{tagline:"It's a hell of a thing, killing a man", title:"Unforgiven", released:1992}}, {_id:101, properties:{tagline:"The hottest data on earth. In the coolest head in town", title:"Johnny Mnemonic", released:1995}}, {_id:106, properties:{tagline:"Everything is connected", title:"Cloud Atlas", released:2012}}, {_id:112, properties:{tagline:"Break The Codes", title:"The Da Vinci Code", released:2006}}, {_id:117, properties:{tagline:"Freedom! Forever!", title:"V for Vendetta", released:2006}}, {_id:122, properties:{tagline:"Speed has no limits", title:"Speed Racer", released:2008}}, {_id:129, properties:{tagline:"Prepare to enter a secret world of assassins", title:"Ninja Assassin", released:2009}}, {_id:131, properties:{tagline:"Walk a mile you'll never forget.", title:"The Green Mile", released:1999}}, {_id:138, properties:{tagline:"400 million people were waiting for the truth.", title:"Frost/Nixon", released:2008}}, {_id:142, properties:{tagline:"He didn't want law. He wanted justice.", title:"Hoffa", released:1992}}, {_id:145, properties:{tagline:"Houston, we have a problem.", title:"Apollo 13", released:1995}}, {_id:148, properties:{tagline:"Don't Breathe. Don't Look Back.", title:"Twister", released:1996}}, {_id:151, properties:{tagline:"At the edge of the world, his journey begins.", title:"Cast Away", released:2000}}, {_id:153, properties:{tagline:"If he's crazy, what does that make you?", title:"One Flew Over the Cuckoo's Nest", released:1975}}, {_id:155, properties:{title:"Something's Gotta Give", released:2003}}, {_id:158, properties:{tagline:"One robot's 200 year journey to become an ordinary man.", title:"Bicentennial Man", released:1999}}, {_id:160, properties:{tagline:"A stiff drink. A little mascara. A lot of nerve. Who said they couldn't bring down the Soviet empire.", title:"Charlie Wilson's War", released:2007}}, {_id:162, properties:{tagline:"This Holiday Season... Believe", title:"The Polar Express", released:2004}}, {_id:163, properties:{tagline:"Once in a lifetime you get a chance to do something different.", title:"A League of Their Own", released:1992}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{name:"Giandomenico Fracchia", properties:{born:1964}}, {name:"Carrie-Anne Moss", properties:{children:["Al", "John", "Jack"], born:1967}}, {name:"Laurence Fishburne", properties:{children:["Naruto", "Sasuke", "Sakura"], born:1961}}, {name:"Hugo Weaving", properties:{born:1960}}, {name:"Lilly Wachowski", properties:{born:1967}}, {name:"Lana Wachowski", properties:{born:1965}}, {name:"Franco e Ciccio", properties:{born:1952}}, {name:"Emil Eifrem", properties:{born:1978}}, {name:"Charlize Theron", properties:{born:1975}}, {name:"Al Pacino", properties:{born:1940}}, {name:"Taylor Hackford", properties:{born:1944}}, {name:"Tom Cruise", properties:{born:1962}}, {name:"Jack Nicholson", properties:{born:1937}}, {name:"Demi Moore", properties:{born:1962}}, {name:"Kevin Bacon", properties:{born:1958}}, {name:"Kiefer Sutherland", properties:{born:1966}}, {name:"Noah Wyle", properties:{born:1971}}, {name:"Cuba Gooding Jr.", properties:{born:1968}}, {name:"Kevin Pollak", properties:{born:1957}}, {name:"J.T. Walsh", properties:{born:1943}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"James Marshall", properties:{born:1967}}, {name:"Christopher Guest", properties:{born:1948}}, {name:"Rob Reiner", properties:{born:1947}}, {name:"Aaron Sorkin", properties:{born:1961}}, {name:"Kelly McGillis", properties:{born:1957}}, {name:"Val Kilmer", properties:{born:1959}}, {name:"Anthony Edwards", properties:{born:1962}}, {name:"Tom Skerritt", properties:{born:1933}}, {name:"Meg Ryan", properties:{born:1961}}, {name:"Tony Scott", properties:{born:1944}}, {name:"Jim Cash", properties:{born:1941}}, {name:"Renee Zellweger", properties:{born:1969}}, {name:"Kelly Preston", properties:{born:1962}}, {name:"Jerry O'Connell", properties:{born:1974}}, {name:"Jay Mohr", properties:{born:1970}}, {name:"Bonnie Hunt", properties:{born:1961}}, {name:"Regina King", properties:{born:1971}}, {name:"Jonathan Lipnicki", properties:{born:1996}}, {name:"Cameron Crowe", properties:{born:1957}}, {name:"River Phoenix", properties:{born:1970}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Corey Feldman", properties:{born:1971}}, {name:"Wil Wheaton", properties:{born:1972}}, {name:"John Cusack", properties:{born:1966}}, {name:"Marshall Bell", properties:{born:1942}}, {name:"Helen Hunt", properties:{born:1963}}, {name:"Greg Kinnear", properties:{born:1963}}, {name:"James L. Brooks", properties:{born:1940}}, {name:"Annabella Sciorra", properties:{born:1960}}, {name:"Max von Sydow", properties:{born:1929}}, {name:"Werner Herzog", properties:{born:1942}}, {name:"Robin Williams", properties:{born:1951}}, {name:"Vincent Ward", properties:{born:1956}}, {name:"Ethan Hawke", properties:{born:1970}}, {name:"Rick Yune", properties:{born:1971}}, {name:"James Cromwell", properties:{born:1940}}, {name:"Scott Hicks", properties:{born:1953}}, {name:"Parker Posey", properties:{born:1968}}, {name:"Dave Chappelle", properties:{born:1973}}, {name:"Steve Zahn", properties:{born:1967}}, {name:"Tom Hanks", properties:{born:1956}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Nora Ephron", properties:{born:1941}}, {name:"Rita Wilson", properties:{born:1956}}, {name:"Bill Pullman", properties:{born:1953}}, {name:"Victor Garber", properties:{born:1949}}, {name:"Rosie O'Donnell", properties:{born:1962}}, {name:"John Patrick Stanley", properties:{born:1950}}, {name:"Nathan Lane", properties:{born:1956}}, {name:"Billy Crystal", properties:{born:1948}}, {name:"Carrie Fisher", properties:{born:1956}}, {name:"Bruno Kirby", properties:{born:1949}}, {name:"Liv Tyler", properties:{born:1977}}, {name:"Brooke Langton", properties:{born:1970}}, {name:"Gene Hackman", properties:{born:1929}}, {name:"Orlando Jones", properties:{born:1968}}, {name:"Howard Deutch", properties:{born:1950}}, {name:"Christian Bale", properties:{born:1974}}, {name:"Zach Grenier", properties:{born:1954}}, {name:"Mike Nichols", properties:{born:1931}}, {name:"Richard Harris", properties:{born:1930}}, {name:"Clint Eastwood", properties:{born:1930}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Takeshi Kitano", properties:{born:1947}}, {name:"Dina Meyer", properties:{born:1968}}, {name:"Ice-T", properties:{born:1958}}, {name:"Robert Longo", properties:{born:1953}}, {name:"Halle Berry", properties:{born:1966}}, {name:"Jim Broadbent", properties:{born:1949}}, {name:"Tom Tykwer", properties:{born:1965}}, {name:"David Mitchell", properties:{born:1969}}, {name:"Stefan Arndt", properties:{born:1961}}, {name:"Ian McKellen", properties:{born:1939}}, {name:"Audrey Tautou", properties:{born:1976}}, {name:"Paul Bettany", properties:{born:1971}}, {name:"Ron Howard", properties:{born:1954}}, {name:"Natalie Portman", properties:{born:1981}}, {name:"Stephen Rea", properties:{born:1946}}, {name:"John Hurt", properties:{born:1940}}, {name:"Ben Miles", properties:{born:1967}}, {name:"Emile Hirsch", properties:{born:1985}}, {name:"John Goodman", properties:{born:1960}}, {name:"Susan Sarandon", properties:{born:1946}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Matthew Fox", properties:{born:1966}}, {name:"Christina Ricci", properties:{born:1980}}, {name:"Rain", properties:{born:1982}}, {name:"Naomie Harris", properties:{}}, {name:"Michael Clarke Duncan", properties:{born:1957}}, {name:"David Morse", properties:{born:1953}}, {name:"Sam Rockwell", properties:{born:1968}}, {name:"Gary Sinise", properties:{born:1955}}, {name:"Patricia Clarkson", properties:{born:1959}}, {name:"Frank Darabont", properties:{born:1959}}, {name:"Frank Langella", properties:{born:1938}}, {name:"Michael Sheen", properties:{born:1969}}, {name:"Oliver Platt", properties:{born:1960}}, {name:"Danny DeVito", properties:{born:1944}}, {name:"John C. Reilly", properties:{born:1965}}, {name:"Ed Harris", properties:{born:1950}}, {name:"Bill Paxton", properties:{born:1955}}, {name:"Philip Seymour Hoffman", properties:{born:1967}}, {name:"Jan de Bont", properties:{born:1943}}, {name:"Robert Zemeckis", properties:{born:1951}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
UNWIND [{name:"Milos Forman", properties:{born:1932}}, {name:"Diane Keaton", properties:{born:1946}}, {name:"Nancy Meyers", properties:{born:1949}}, {name:"Chris Columbus", properties:{born:1958}}, {name:"Julia Roberts", properties:{born:1967}}, {name:"Madonna", properties:{born:1954}}, {name:"Geena Davis", properties:{born:1956}}, {name:"Lori Petty", properties:{born:1963}}, {name:"Penny Marshall", properties:{born:1943}}, {name:"Paul Blythe", properties:{}}, {name:"Angela Scope", properties:{}}, {name:"Jessica Thompson", properties:{}}, {name:"James Thompson", properties:{}}] AS row
CREATE (n:Person{name: row.name}) SET n += row.properties;
