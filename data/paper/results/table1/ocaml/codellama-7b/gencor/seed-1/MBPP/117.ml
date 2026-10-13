
let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
match test_list with
| h :: t ->
(try float_of_string h with Invalid_argument _ -> h), 
(try float_of_string t with Invalid_argument _ -> t) :: list_to_float t
| [] -> []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
