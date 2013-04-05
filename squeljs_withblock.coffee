# (SELECT) With Query that goes before the main select() query.
class cls.WithBlock extends cls.Block
  constructor: (options) ->
    super options
    @withs = []

  withQuery: (query, alias) ->
    query = query.toString()
    alias = @_sanitizeAlias(alias)

    @withs.push
      query: query
      alias: alias

  buildStr: (queryBuilder) ->
    withs = ""
    if 0 < @withs.length
      for f in @withs
        withs +=  ", " if "" isnt withs
        withs += " \"#{f.alias}\" AS "
        withs += "(" + f.query + ") "
      withs = "WITH #{withs}"
    withs