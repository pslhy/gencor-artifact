(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last elements in a list. *)
let rec swap_List (newList : int list) : int list = 
    match newList with 
      head :: tail -> 
      (match tail with 
          first :: last :: rev -> last :: head :: rev
         |_ -> [head])
    |_ -> [head];;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:12: Unbound value "head" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list = 
  match newList with 
    [] -> []
  | head :: tail -> 
     match tail with 
       first :: last :: rev -> last :: head :: rev
     |_ -> []
;;

