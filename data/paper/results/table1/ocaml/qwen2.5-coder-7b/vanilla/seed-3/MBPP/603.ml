let rec get_ludic (n : int) : int list = 
  let rec helper (lst : int list) (skip : int) : int list = 
    match lst with 
    | [] -> []
    | x :: xs -> if skip > 0 then helper xs (skip - 1) else x :: helper xs (x - 1)
  in helper (List.init n (fun i -> i + 1)) (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
