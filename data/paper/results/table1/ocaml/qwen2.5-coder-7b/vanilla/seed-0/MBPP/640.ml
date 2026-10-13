let rec remove_parenthesis (items : string list) : string = 
  let is_not_bracket s = 
    s <> "(" && s <> ")" 
  in
  let rec loop = function
    | [] -> ""
    | x::xs -> if is_not_bracket x then x ^ loop xs else loop xs
  in
  loop (items |> String.split_on_char ',')


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
