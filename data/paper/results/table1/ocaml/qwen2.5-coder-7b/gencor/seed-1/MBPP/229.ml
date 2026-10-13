
let rec re_arrange_array (arr : int list) (n : int) : int list = 
  let negative = List.filter (fun x -> x < 0) arr in
  let positive = List.filter (fun x -> x >= 0) arr in
  let move_negatives = List.tl negative @ List.hd negative in
 List.append move_negatives (List.append (List.tl positive) (List.hd positive))



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
