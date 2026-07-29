
webrClass <- if (requireNamespace('jmvcore', quietly = TRUE)) R6::R6Class(
  "webrClass",
  inherit = webrBase,
  private = list(
    .run = function() {
      
      webRUrl <- paste0(
        "https://snowsoft-inc.github.io/webr-ide/widgets/edu-basic.html",
        "?launch=snowsoft-web-r-65"
      )
      
      webRWebsiteUrl <- "https://snowsoft.kr/65"
      
      html <- paste0(
        '<div style="',
        'padding:24px;',
        'text-align:center;',
        '">',
        
        '<div style="',
        'font-size:24px;',
        'font-weight:700;',
        'margin-bottom:10px;',
        '">',
        'Web R',
        '</div>',
        
        '<div style="',
        'font-size:14px;',
        'line-height:1.6;',
        'margin-bottom:20px;',
        '">',
        'Continue your analysis with R directly in your browser.',
        '</div>',
        
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
        'margin-top:16px;',
        'font-size:12px;',
        'line-height:1.5;',
        '">',
        
        '<a href="', webRWebsiteUrl, '" ',
        'target="_blank" ',
        'rel="noopener noreferrer" ',
        'style="',
        'color:#2563eb;',
        'font-weight:600;',
        'text-decoration:none;',
        '">',
        'Learn more about Web R&nbsp;&#8599;',
        '</a>',
        
        '</div>',
        
        '</div>'
      )
      
      self$results$instructions$setContent(html)
      
    }
  )
)