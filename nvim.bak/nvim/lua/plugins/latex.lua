return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.cmd [[
            let g:vimtex_view_method = 'skim'
            let g:vimtex_view_general_options = '-r @line @pdf @tex'
            let g:vimtex_compiler_method = 'latexmk'
            let g:vimtex_compiler_latexmk_engines = {
                \ '_' : '-xelatex',
                \ 'pdflatex' : '-pdflatex',
                \ 'lualatex' : '-lualatex',
                \ 'xelatex' : '-xelatex',
                \ 'xelatex-se' : '-xelatex --shell-escape',
                \ 'bib-xelatex' : '-xelatex -biber',
           \}
           ]]
    end,
    dependencies = {
      "AstroNvim/astrocore",
    },
  },
}

