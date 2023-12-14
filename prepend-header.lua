-- prepend-header.lua
function Pandoc(doc)
  local header_lines = {
    "#+TITLE:Vaarnan Drolia",
    "#+AUTHOR:Vaarnan Drolia",
    "#+OPTIONS: num:nil",
    "#+OPTIONS: toc:nil",
    "#+KEYWORDS: vaarnan,drolia,resume,google,nus,london,zurich,san francisco",
    "#+HTML_HEAD: <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />",
    "#+HTML_HEAD: <link rel=\"stylesheet\" type=\"text/css\" href=\"https://fonts.googleapis.com/css?family=Crimson%20Pro:400,700\"/>",
    ""
  }
  local header_content = table.concat(header_lines, '\n')
  local header = pandoc.RawBlock('org', header_content)
  table.insert(doc.blocks, 1, header)
  return doc
end
