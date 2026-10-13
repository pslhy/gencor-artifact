(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
let rec get_coordinates (test_tup :  int * int) : int list list = 
    match test_tup with
    | (x, y) -> List.cartesian_product [List.flatten [x ; x + 1] ; List.flatten [y ; y + 1]]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:17: Unbound value "List.cartesian_product" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_coordinates (test_tup :  int * int) : int list list = 
    let rec cartesian_product (xs :  int list) (ys :  int list) :  int list list = 
        match (xs, ys) with
        | ([], _) -> []
        | (_, []) -> []
        | (x::xs, y::ys) -> (x, y) :: cartesian_product xs ys
    in cartesian_product [for i in 1..test_tup] [for j in 1..test_tup]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:33: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_coordinates (test_tup :  int * int) : int list list =
  let rec cartesian_product (xs : int list) (ys : int list) : int list list =
    match (xs, ys) with
    | ([], _) -> []
    | (_, []) -> []
    | (x::xs, y::ys) -> (x, y) :: cartesian_product xs ys
  in cartesian_product [1; 2; 3] [4; 5; 6]

