let rec split_Arr (l : int list) (n : int) : int list = 
  let rec split acc i = function
    | [] -> (List.rev acc, [])
    | x::xs -> if i = n then (List.rev acc, x::xs) else split (x::acc) (i+1) xs
  in
  let (first, second) = split [] 0 l in
  second @ first;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
