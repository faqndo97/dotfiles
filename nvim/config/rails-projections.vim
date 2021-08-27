" Map useful shortcuts for alternate and related files
map <leader>aa :A<CR>
map <leader>av :AV<CR>
map <leader>as :AS<CR>
map <leader>rr :R<CR>
map <leader>rv :RV<CR>
map <leader>rs :RS<CR>

" Define projections
let g:rails_projections = {}

let g:rails_projections["app/services/*_service.rb"] = {
  \   "command": "service",
  \   "test": "spec/services/{singular}_spec.rb",
  \   "template": [
  \     "class {camelcase|capitalize|colons}Service",
  \     "end"
  \   ]
  \ }

let g:rails_projections["app/components/*.rb"] = {
  \   "command": "component",
  \   "related": "app/components/{}.html.erb",
  \   "test": "spec/components/{}_spec.rb",
  \   "template": [
  \     "class {camelcase|capitalize|colons}Service",
  \     "\tdef initialize",
  \     "\tend",
  \     "end"
  \   ]
  \ }

let g:rails_projections["app/components/*.html.erb"] = {
  \   "command": "component",
  \   "related": "app/components/{}.rb",
  \   "test": "spec/components/{}_spec.rb",
  \ }

let g:rails_projections["spec/factories/*.rb"] = {
  \   "command": "factory",
  \   "related": "app/models/{singular}.rb",
  \   "test":      "spec/models/{singular}_test.rb",
  \   "template":  "FactoryGirl.define do\n  factory :%i do\n  end\nend",
  \ }

let g:rails_projections["spec/models/*.rb"] = {
  \   "command": "factory",
  \   "related": "spec/factories/{plural}.rb",
  \   "test":      "spec/models/{singular}_test.rb"
  \ }
