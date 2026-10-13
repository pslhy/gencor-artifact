(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
let rec test_duplicate (arraynums : int list) : bool =
    match arraynums with
    | [] -> false
    | head::tail -> if contains head tail then true
                                           else test_duplicate tail
   
    let contains (el:int) (list:int list) : bool =
          list contains el

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "contains" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool =
    match arraynums with
    | [] -> false
    | [x] -> false
    | head::tail -> if test_duplicate tail then true
                                           else test_duplicate tail

