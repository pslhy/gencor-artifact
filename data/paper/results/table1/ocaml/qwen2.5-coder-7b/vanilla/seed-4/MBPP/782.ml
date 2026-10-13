let rec odd_length_sum (arr : int list) : int = 
  let rec sum_sublists (lst : int list) (len : int) (acc : int) : int = 
    if len <= 0 then acc
    else sum_sublists lst (len - 1) (acc + List.fold_left (+) 0 (List.take len lst))
  in
  let rec helper (lst : int list) : int =
    if lst = [] then 0
    else acc + sum_sublists lst (List.length lst) 0 + helper (List.tl lst)
  in
  helper arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
