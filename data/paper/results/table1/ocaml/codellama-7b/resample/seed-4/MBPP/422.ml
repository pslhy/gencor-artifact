(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
let rec find_Average_Of_Cube (n : int) : float = 
    let rec cubic (x : int) = x * x * x in
    let rec sum (n : int, curr_sum: float) : float = 
        if n = 0 then curr_sum else sum (n-1, curr_sum +. (float_of_int (cubic n))) in
     sum (n, 0.)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:25: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Average_Of_Cube (n : int) : float =
    let rec cubic (x : int) = x * x * x in
    let rec sum (n : int, curr_sum: float) : float =
        if n = 0 then curr_sum
        else sum (n-1, curr_sum +. (float_of_int (cubic n)))
    in
    print_float (sum (n, 0.) /. float_of_int (n))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:25: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Average_Of_Cube (n : int) : float =
	let rec recursive_cubing (x : int) = x * x * x in
	let rec accumulate (n : int, curr_sum : float) : float =
		if n = 0 then curr_sum
		else accumulate (n-1, curr_sum +. (float_of_int (recursive_cubing n)))
	in
	accumulate (n, 0.) /. float_of_int (n)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Average_Of_Cube (n : int) : float =
	let rec recursive_cubing (x : int) = x * x * x in
	let rec accumulate (n : int, curr_sum : float) : float =
		if n = 0 then curr_sum
		else accumulate (n-1, curr_sum +. (float_of_int (recursive_cubing n))
	in
	accumulate (n, 0.) /. float_of_int (n)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Average_Of_Cube (n : int) : float =
	let rec recursive_cubing (x : int) = x * x * x in
	let rec accumulate (n : int, curr_sum : float) : float =
		if n = 0 then curr_sum
		else accumulate (n-1, curr_sum +. float_of_int (recursive_cubing n))
	in
	accumulate (n, 0.) /. float_of_int (n)

