{node,n1,node1@host1}.
{node,n2,node2@host2}.
{alias,to1,"../tests/to1"}.
{alias,to2,"../tests/to2"}.
{label,"multiple_specs1"}.
{config,n1,"../cfgs/to1/x.cfg"}.
{config,n2,["../cfgs/to2/x.cfg","../cfgs/to2/y.cfg"]}.
{logdir,all_nodes,"../logs"}.
