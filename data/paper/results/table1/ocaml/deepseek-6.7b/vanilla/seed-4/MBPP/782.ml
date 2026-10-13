let rec odd_length_sum (arr : int list) : int =
  match arr with
  |[] -> 0
  |_ -> List.fold_left (+) 0 (List.rev (List.mapi (fun i x -> if i mod 2 = 0 then List.fold_left (+) 0 (List.init (i+2) (fun j -> if j mod 2 = 0 then List.nth arr (j/2) else 0)) else 0) (List.init (List.length arr * 2) (fun i -> i)))) arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
