let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  | [] -> if n=0 then 0 else (List.hd arr) lsr 1
  | h::t ->
     if n=0 then
       0
     else if n mod 2 = 1 then
       List.fold_left (fun acc x -> acc lxor (h lxor x)) 0 arr + ((List.length arr) * (h lsr 1))
     else
       List.fold_left (fun acc x -> acc lxor (h lxor x)) 0 arr + (List.length arr * ((h lsr 1) lxor (List.hd t lsr 1)))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
