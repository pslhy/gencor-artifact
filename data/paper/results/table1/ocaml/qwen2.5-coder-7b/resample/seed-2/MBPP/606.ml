(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert degrees to radians. *)
let rec radian_degree (degree : int) : float = 
    degree *. (π /. 180.0)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Illegal character (\128) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec radian_degree (degree : int) : float = 
    degree *. (3.141592653589793 /. 180.0)

