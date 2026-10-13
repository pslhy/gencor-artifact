(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
  | [] -> None
  | [ (a, b) ] -> a
  | (a, b) :: tail -> if b < (index_minimum tail) then a
  
let find_first_min (test_list :  (string * int) list) : string =
  match test_list with
  | [] -> None
  | _ -> index_minimum test_list

