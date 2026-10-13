let rec tuple_str_int (test_str : string) :  int * int * int =
match String.split_on_char '(' test_str with
| [ ; [x ;y ;z]] ->
let  x = (String.split_on_char ',' x) in
let  y = (String.split_on_char ',' y) in
let  z = (String.split_on_char ',' z) in
let x' = List.nth x 0 in
let y' = List.nth y 0 in
let z' = List.nth z 0 in
(x',y'), (Int.of_string x'), (Int.of_string y'), (Int.of_string z')
| [ ; [x ; y] ] ->
let  x = (String.split_on_char ',' x) in
let  y = (String.split_on_char ',' y) in
let x' = List.nth x 0 in
let y' = List.nth y 0 in
(x', y'), (Int.of_string x'), (Int.of_string y')
| _ -> raise Not_found
Done


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
