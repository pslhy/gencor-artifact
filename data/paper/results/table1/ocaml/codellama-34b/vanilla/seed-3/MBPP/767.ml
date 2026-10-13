let rec get_pairs_count (arr : int list) (sum : int) : int =
  let n = List.length in
  let rec traverse (i : int) : int =
    n = i
  and traverse2 (j : int) : int =
    if arr.(i) + arr.(j) = sum then
      1 + traverse2(j + 1)
    else
      traverse2 (j + 1)
in
  traverse 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
