let rec split_Arr (l : int list) (n : int) : int list =
  if n = 0 then l else
  match l with
  | x::y::xs -> x::(split_Arr (ys @ [x]) (n - 1))
  | _ -> l
and ys = [1; 2; 3]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
