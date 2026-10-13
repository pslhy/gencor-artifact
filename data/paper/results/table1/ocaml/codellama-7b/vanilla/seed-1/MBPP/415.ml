let rec max_Product (arr : int list) :  int * int =
match arr with
| a::b::tail ->
	let (a_max, b_max) = max_Product (a::tail) in
	let a_prod = a * b in
	let b_prod = a_max * b in
	if a_prod > b_prod then
		(a, b)
	else
		(a_max, b_max)
| _ -> failwith "Input list is empty"

let _ = max_Product [1; 4; 3; 2; 10; 8]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
