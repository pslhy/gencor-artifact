let rec get_pairs_count (arr : int list) (sum : int) : int =
  let len = List.length arr in
  let rec inner (i : int) (j : int) (acc : int) : int =
    if i >= j then acc
    else
      let cur_sum = arr.(i) + arr.(j) in
      if cur_sum = sum then acc + 1
      else inner i (j + 1) (if cur_sum > sum then acc else acc + 1)
  in
  inner 0 len 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
