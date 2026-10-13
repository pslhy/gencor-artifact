let rec find_even_pair (a : int list) : int = 
  let f (x, y, acc) z = 
    if (x lxor y) land 1 = 0 then (x, z, acc + 1) else (x, z, acc) in
  snd (List.fold_left f (List.hd a, 0, 0) (List.tl a))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
