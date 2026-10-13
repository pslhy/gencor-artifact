(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count true booleans in the given list. *)
let rec count (lst : bool list) : int = 
    match lst with 
    | head :: tail -> 
        (match head with 
        | true -> count tail + 1 
        | false -> count tail ) 
    | [] -> 0
end;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count (lst : bool list) : int = 
  match lst with 
  | head :: tail -> 
      (match head with 
      | true -> count tail + 1 
      | false -> count tail ) 
  | [] -> 0
end;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count (lst : bool list) : int = 
  match lst with 
  | head :: tail -> 
      (match head with 
      | true -> count tail + 1 
      | false -> count tail ) 
  | [] -> 0
end;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count (lst : bool list) : int = 
  match lst with
  | head :: tail ->
      (match head with
      | true -> count tail + 1
      | false -> count tail)
  | [] -> 0
end;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count (lst : bool list) : int = 
  match lst with
  | h :: t ->      (* change 'head' to 'h' in the pattern matching *)
      (match h with
      | true -> count t + 1
      | false -> count t)
  | [] -> 0
end;;

