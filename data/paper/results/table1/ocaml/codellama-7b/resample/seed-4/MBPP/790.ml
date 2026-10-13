(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every even index contains even numbers of a given list. *)
let rec even_position (nums : int list) : bool = 
    match nums with 
      head :: tail -> 
          (match head with 
          | x when x % 2 = 0 -> even_position tail 
          | _ -> false) 
      | [] -> true

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_position (nums : int list) : bool = 
    match nums with 
      head :: tail -> 
          List.mem (head % 2) [0; 1];
      | [] -> true

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_position (nums : int list) : bool = 
    match nums with 
      head :: tail -> 
          (head mod 2) = 0;
      | [] -> true

