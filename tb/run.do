if [file exists work] {vdel -all}
vlib work
vlog -f compile.f 
vsim  top +UVM_TESTNAME=random_test
set  NoQuitOnFinish 1
onbreak {resume}
run -all
vsim  top +UVM_TESTNAME=assert_test
run -all
quit