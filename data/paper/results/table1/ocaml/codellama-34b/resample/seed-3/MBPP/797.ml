(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd natural numbers within the range l and r. *)
let rec sum_in_range (l : int) (r : int) : int =
  if l = r then l
  else
    let mid = l + (r - l) / 2 in
    let left_sum = sum_in_range l mid in
    let right_sum = sum_in_range (mid + 1) r in
    left_sum + right_sum

