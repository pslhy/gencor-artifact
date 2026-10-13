let rec remove_length (test_str : string) (k : int) : string = 
  let split_str = String.split_on_char ' ' test_str in
  let rec helper (lst : string list) : string list = 
    match lst with 
    | [] -> []
    | x::xs -> if String.length x <> k then x::(helper xs) else helper xs
  in 
  String.concat " " (helper split_str)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
