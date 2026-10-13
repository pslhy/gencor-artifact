let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
  let rec helper input k acc = 
    match (input, k) with
    | [], _ -> acc
    | x::xs, 0 -> List.rev acc @ x::xs
    | x::xs, _ -> helper xs (k-1) (x::acc)
  in
  helper input k []

(* Example usage:
let result = reverse_Array_Upto_K [1; 2; 3; 4; 5] 3;;
print_int_list result; (* Output will be 3 2 1 4 5 *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
