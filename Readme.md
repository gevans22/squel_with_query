Adds with query capabilities as a clause to squel.select for the squel.js library

syntax squel.select().with({SQLQuery, escaped to string so accepts another squel.select() query}, alias)

(NOTE: The coffeescript block has the syntax of squel.select().withQuery(query...) because 'with' is reserved in coffeescript but the compiled js has it as with)
e.g.
squel.select()
    .with(squel.select().from('foo'), 'bar')
    .field('COUNT(*) as count')
    .from('bar') 
