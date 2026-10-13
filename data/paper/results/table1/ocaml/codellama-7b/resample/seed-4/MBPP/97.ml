(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
let rec frequency_lists (list1 : int list list) : (int * int) list = 
    match list1 with 
      head :: tail -> 
          (match head with 
          |[] -> head :: frequency_lists tail
          |x ->  frequency_lists tail);
       [] -> list1; 

frequency_lists [[1;2;3;4;2;4]; [1;1 ;3;3 ] ; [2;2;1]; []] 
 [(1,3) ; (2,4) ; (3,4) ; (4,3)] 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec frequency_lists (list1 : int list list) : (int * int) list =
  match list1 with
  | head :: tail ->
      let length = List.length head in
      (length, List.length head) :: frequency_lists tail
  | [] -> []

