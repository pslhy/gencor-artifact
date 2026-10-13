(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  | [] -> 0
  | h :: t -> (h lxor n) + pair_xor_Sum t n


let sum_xor_all_pairs (arr : int list) : int =
    Array.reduce ( + ) @@ Array.of_list (List.map (pair_xor_Sum arr) arr)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Unbound value "Array.reduce" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  | [] -> 0
  | h :: t -> (h lxor n) + pair_xor_Sum t n

let sum_xor_all_pairs (arr : int list) : int =
    Array.reduce ( + ) @@ Array.of_list (List.map (pair_xor_Sum arr) arr)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:5: Unbound value "Array.reduce" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  | [] -> 0
  | h :: t -> (h lxor n) + pair_xor_Sum t n

let sum_xor_all_pairs (arr : int list) : int =
    List.fold_left ( + ) 0 (List.map (pair_xor_Sum arr) arr)

