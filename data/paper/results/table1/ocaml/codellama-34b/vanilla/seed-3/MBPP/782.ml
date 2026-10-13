let rec odd_length_sum (arr : int list) : int =
  if List.length arr mod 2 = 0 then 0
  else List.fold_left (+) 0 arr

let rec sublist_sum (arr : int list) : int =
  if List.length arr = 0 then 0
  else List.fold_left (+) 0 (List.map (fun x -> odd_length_sum x) (List.sublists arr))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
