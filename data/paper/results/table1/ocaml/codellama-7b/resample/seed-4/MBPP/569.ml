(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
let rec sort_sublists (list1 : string list list) : string list list = 
    match list1 with 
      head :: tail ->  (List.sort String.compare head) :: (List.hpp String.compare sort_sublists tail)
      | [] -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:60: Unbound value "List.hpp" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_sublists (list1 : string list list) : string list list = 
    match list1 with 
      head :: tail ->  (List.sort String.compare head) :: sort_sublists tail 
      | [] -> []

