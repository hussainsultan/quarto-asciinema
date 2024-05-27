local function ensureHtmlDeps()
  quarto.doc.add_html_dependency({
    name = 'asciinema',
    version = '0.1.0',
    stylesheets = { 'assets/asciinema-player.css' },
    scripts = { 'assets/asciinema-player.min.js', 'assets/asciinema-player.autoload.js' }
  })
end

local function tableToJson(tbl)
  local result = {}
  for k, v in pairs(tbl) do
    table.insert(result, '"' .. k .. '": "' .. v .. '"')
  end
  return "{" .. table.concat(result, ", ") .. "}"
end

return {
  ['asciinema'] = function(args, kwargs, meta)
    local castPath = pandoc.utils.stringify(args[1])
    local options = {}
    for k, v in pairs(kwargs) do
      options[k] = pandoc.utils.stringify(v)
    end
    local optionsJson = tableToJson(options)

    if quarto.doc.is_format("html:js") then
      ensureHtmlDeps()

      return pandoc.RawInline(
        'html',
        '<div class="player-container" cast-src="' .. castPath .. '" data-options=\'' .. optionsJson .. '\'></div>'
      )
    else
      return pandoc.Null()
    end
  end
}
