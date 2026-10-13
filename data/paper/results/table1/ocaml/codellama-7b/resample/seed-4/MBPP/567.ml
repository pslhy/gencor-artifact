(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a specified list is sorted or not. *)
let rec issort_list (list1 : int list) : bool = 
    match list1 with 
      head :: tail -> 
          (match tail with 
          |[] -> true 
          | head':: tail' -> 
              if head > head' then false 
              else issort_list(tail'))
      [] -> true 
  

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec issort_list (list1 : int list) : bool = 
  match List.tl list1 with 
    head :: tail -> 
      (match List.tl tail with 
      |[] -> true 
      | head':: tail' -> 
          if head > head' then false 
          else issort_list(tail'))
  |[] -> true 


