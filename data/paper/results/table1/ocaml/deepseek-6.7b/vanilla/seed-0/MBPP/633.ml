let rec pair_xor_Sum (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | h::t -> (List.fold_left (fun acc x -> acc + (h lxor x)) 0 arr) + pair_xor_Sum t (n-1)

let xor_Sum (arr : int list) : int =
    let n = List.length arr in
    pair_xor_Sum arr n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
