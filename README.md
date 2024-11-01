# compiler_experiments
~/compiler_experiments $ cat func_test.lang 
func test() {
}

func test2(){
}

func test() {
	func tddd() {
	}
}

func test1() {
	func test2() {
		func test3() {
			func test4() {
			}
		}
	}
}

pi@DNS:~/compiler_experiments $ ./a.out  < func_test.lang 
func_name-> IDENT
function-> FUNC func_name LPAR RPAR LCURLY RCURLY 
func_name-> empty
func_name-> IDENT NUMBER
function-> FUNC func_name LPAR RPAR LCURLY RCURLY 
func_name-> IDENT
func_name-> IDENT
function-> FUNC func_name LPAR RPAR LCURLY RCURLY 
function-> FUNC func_name LPAR RPAR LCURLY function RCURLY 
func_name-> empty
func_name-> IDENT NUMBER
func_name-> empty
func_name-> IDENT NUMBER
func_name-> empty
func_name-> IDENT NUMBER
func_name-> empty
func_name-> IDENT NUMBER
function-> FUNC func_name LPAR RPAR LCURLY RCURLY 
function-> FUNC func_name LPAR RPAR LCURLY function RCURLY 
function-> FUNC func_name LPAR RPAR LCURLY function RCURLY 
function-> FUNC func_name LPAR RPAR LCURLY function RCURLY 
functions-> empty
functions-> function functions
functions-> function functions
functions-> function functions
functions-> function functions
program -> functions


