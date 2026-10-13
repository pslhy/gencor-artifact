(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
let rec odd_length_sum (arr : int list) : int =
  if List.length arr mod 2 = 0 then 0
  else List.fold_left (+) 0 arr

let rec sublist_sum (arr : int list) : int =
  if List.length arr = 0 then 0
  else List.fold_left (+) 0 (List.map (fun x -> odd_length_sum x) (List.sublists arr))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:68: Unbound value "List.sublists" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  if List.length arr mod 2 = 0 then 0
  else List.fold_left (+) 0 arr

let rec sublist_sum (arr : int list) : int =
  if List.length arr = 0 then 0
  else List.fold_left (+) 0 (List.map (fun x -> odd_length_sum x) arr)

