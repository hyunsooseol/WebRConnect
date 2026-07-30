
webrClass <- if (requireNamespace('jmvcore', quietly = TRUE)) R6::R6Class(
  "webrClass",
  inherit = webrBase,
  private = list(
    .run = function() {
      
      webRUrl <- paste0(
        "https://snowsoft-inc.github.io/webr-ide/widgets/edu-basic.html",
        "?launch=snowsoft-web-r-65"
      )
      
      html <- paste0(
        '<div style="',
        'padding:40px 24px;',
        'text-align:center;',
        '">',
        
        '<a href="', webRUrl, '" ',
        'target="_blank" ',
        'rel="noopener noreferrer" ',
        'style="',
        'display:inline-block;',
        'padding:12px 22px;',
        'border-radius:8px;',
        'background:#17626c;',
        'color:#ffffff;',
        'font-size:15px;',
        'font-weight:700;',
        'text-decoration:none;',
        '">',
        'Open Web R&nbsp;&nbsp;&#8599;',
        '</a>',
        
        '<div style="',
        'display:flex;',
        'justify-content:center;',
        'flex-wrap:wrap;',
        'gap:7px;',
        'margin-top:20px;',
        '">',
        
        '<span style="',
        'display:inline-block;',
        'padding:5px 10px;',
        'border-radius:999px;',
        'background:#f1f5f6;',
        'border:1px solid #d8e2e4;',
        'color:#51666a;',
        'font-size:11px;',
        'font-weight:600;',
        '">',
        'No installation',
        '</span>',
        
        '<span style="',
        'display:inline-block;',
        'padding:5px 10px;',
        'border-radius:999px;',
        'background:#f1f5f6;',
        'border:1px solid #d8e2e4;',
        'color:#51666a;',
        'font-size:11px;',
        'font-weight:600;',
        '">',
        'R 4.6',
        '</span>',
        
        '<span style="',
        'display:inline-block;',
        'padding:5px 10px;',
        'border-radius:999px;',
        'background:#f1f5f6;',
        'border:1px solid #d8e2e4;',
        'color:#51666a;',
        'font-size:11px;',
        'font-weight:600;',
        '">',
        'CRAN packages',
        '</span>',
        
        '</div>',
        
        '</div>'
      )
      
      self$results$instructions$setContent(html)
      
    }
  )
)