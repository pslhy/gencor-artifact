let rec split_Arr (l : int list) (n : int) : int list = 
  let rec split_at lst n = 
    match (lst, n) with
    | [], _ -> ([], [])
    | h::t, 0 -> ([h], t)
    | h::t, n -> let (a, b) = split_at t (n - 1) in (h::a, b)
  in
  let (first, rest) = split_at l n in
  rest @ first


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
