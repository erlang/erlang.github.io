{node,x,n1@h1}.
{node,y,n2@h2}.
{config,"../cfgs/to1","a.cfg"}.
{config,n1@h1,"../cfgs/to1","b.cfg"}.
{config,all_nodes,"../cfgs/to1","c.cfg"}.
{config,all_nodes,"../cfgs/to1/d.cfg"}.
{basic_html,true}.
{basic_html,n1@h1,false}.
{basic_html,n2@h2,true}.
{silent_connections,n1@h1,all}.
{silent_connections,n2@h2,[ssh]}.
{enable_builtin_hooks,false}.
{release_shell,true}.
{auto_compile,false}.
{auto_compile,n1@h1,true}.
{auto_compile,n2@h2,false}.
{stylesheet,"../css"}.
{stylesheet,n1@h1,"./n1/css"}.
{stylesheet,n2@h2,"./n2/css"}.
{create_priv_dir,[auto_per_tc]}.
{create_priv_dir,n1@h1,[manual_per_tc]}.
{create_priv_dir,n2@h2,[auto_per_run]}.
{suites,n1@h1,"../tests/to1",[x_SUITE]}.
