(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
let rec unique_product (list_data : int list) : int = 
    (* base case: If the list is empty, return 1 *)
    if list_data = [] then 1 
    (* recursive case: If the first element has not been seen before, multiply it by the product of the rest of the list *)
    else if List.mem list_data @t0 then unique_product (List.tl list_data)
    (* recursive case: If the first element has been seen before, multiply it by the product of the rest of the list *)
    else (List.hd list_data) * (unique_product (List.tl list_data)) in

let _ = unique_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec unique_product (list_data : int list) : int =
  match list_data with
  | [] -> 1
  | h :: t -> if List.mem h t then unique_product t
             else h * unique_product t

let _ = unique_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]

