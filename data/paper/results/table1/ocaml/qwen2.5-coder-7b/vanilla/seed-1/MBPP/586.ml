let rec split_Arr (l : int list) (n : int) : int list = 
  let rec split (acc: int list) (rem: int list) (count: int) : (int list * int list) =
    match rem with
    | [] -> (List.rev acc, [])
    | h::t -> if count = n then (List.rev acc, h::t) else split (h::acc) t (count + 1)
  in
  let (first, second) = split [] l 0 in
  second @ first


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
