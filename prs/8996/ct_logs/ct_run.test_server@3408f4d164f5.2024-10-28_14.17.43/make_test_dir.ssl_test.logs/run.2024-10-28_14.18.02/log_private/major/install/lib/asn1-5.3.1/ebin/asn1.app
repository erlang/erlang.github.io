{application, asn1,
 [{description, "The Erlang ASN1 compiler version 5.3.1"},
  {vsn, "5.3.1"},
  {modules, [
        asn1rt_nif
             ]},
  {registered, [
	asn1_ns,
	asn1db
		]},
  {env, []},
  {applications, [kernel, stdlib]},
  {runtime_dependencies, ["stdlib-5.0","kernel-9.0","erts-14.0"]}
  ]}.
