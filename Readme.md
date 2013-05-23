Adds with query capabilities as a clause to squel.select for the squel.js library

syntax squel.select().with({SQLQuery, escaped to string so accepts another squel.select() query}, alias)

(NOTE: The coffeescript block has the syntax of squel.select().withQuery(query...) because 'with' is reserved in javascript [TODO: change in all areas] but the compiled js has it as with)

Example:
squel.select()
    .with(squel.select().from('foo'), 'bar')
    .field('COUNT(*) as count')
    .from('bar') 
