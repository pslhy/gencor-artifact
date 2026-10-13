(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
let rec two_unique_nums (nums : int list) : int list = 
  let rec helper seen rest = 
    match rest with
    | [] -> List.rev seen
    | x::xs -> if mem x seen then helper seen xs else helper (x::seen) xs in
  helper [] nums

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "mem" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec two_unique_nums (nums : int list) : int list = 
  let rec helper seen rest = 
    match rest with
    | [] -> List.rev seen
    | x::xs -> if List.mem x seen then helper seen xs else helper (x::seen) xs in
  helper [] nums

