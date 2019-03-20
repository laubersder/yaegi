#!/bin/sh

export LANG=C

echo '// Code Generated by ../_test/gen_example.sh. DO NOT EDIT.'
echo
echo 'package interp_test'
echo
echo 'import ('
echo '	"github.com/containous/yaegi/interp"'
echo '	"github.com/containous/yaegi/stdlib"'
echo ')'
echo
for file in *.go
do
	awk '
	$0 == "// Output:" { done = 1 }
	{ if (done) out = out "\n" $0; else src = src "\n" $0 }
	END {
		print "func Example_'${file%.*}'() {"
		print "src := `" src "`"
		print "i := interp.New(interp.Opt{Entry: \"main\"})"
		print "i.Use(stdlib.Value)"
		print "_, err := i.Eval(src)"
		print "if err != nil {"
		print "	panic(err)"
		print "}"
		print out
		print "}"
	}
	' $file

	echo
done
