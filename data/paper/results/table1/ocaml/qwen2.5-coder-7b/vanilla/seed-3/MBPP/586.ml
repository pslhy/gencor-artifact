let rec split_Arr (l : int list) (n : int) : int list = 
  let rec split (lst : int list) (acc : int list) (count : int) : (int list * int list) =
    match lst with
    | [] -> (List.rev acc, [])
    | x::xs ->
      if count = n then (List.rev acc, x::xs)
      else split xs (x::acc) (count + 1)
  in
  let (first_part, second_part) = split l [] 0 in
  second_part @ first_part


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
