" PHP debug
let g:vdebug_options= {
\    "port" : 9001,
\    "server" : '',
\    "timeout" : 20,
\    "on_close" : 'detach',
\    "break_on_open" : 0,
\    "ide_key" : 'PHPSTORM',
\    "path_maps" : {'/var/www/html': '/home/romandunik/work/dockerized-tera-cms/src/'},
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\    "watch_window_style" : 'compact',
\    "marker_default"     : '⬦',
\    "marker_closed_tree" : '▸',
\    "marker_open_tree" : '▾'
\}
let g:vdebug_features = { 'max_children': 10000 }
let g:vdebug_options['watch_window_style'] = 'compact'

