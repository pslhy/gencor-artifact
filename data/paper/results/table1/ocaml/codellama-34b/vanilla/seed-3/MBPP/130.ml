let rec max_occurrences (nums : int list) : int =
  if List.length nums <= 1 then
    nums
  else
    let max_occ = max nums.(0) nums.(1) in
    List.fold_left (fun acc x -> if acc > x then acc else x) nums.(2) nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
