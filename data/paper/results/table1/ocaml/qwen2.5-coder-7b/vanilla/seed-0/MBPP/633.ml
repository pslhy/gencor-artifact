let rec pair_xor_Sum (arr : int list) (n : int) : int = 
  let rec xor_pair_with_rest (i : int) (sum : int) (rest : int list) : int = 
    match rest with
    | [] -> sum
    | x::xs -> xor_pair_with_rest i (sum + (i lxor x)) xs
  in
  let rec loop (i : int) (n : int) (sum : int) : int = 
    if i >= n then sum
    else loop (i + 1) n (sum + (xor_pair_with_rest i 0 (Array.to_list (Array.of_list arr))))
  in
  loop 0 n 0

let xor_of_pairs (lst : int list) : int =
  pair_xor_Sum lst (List.length lst)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
