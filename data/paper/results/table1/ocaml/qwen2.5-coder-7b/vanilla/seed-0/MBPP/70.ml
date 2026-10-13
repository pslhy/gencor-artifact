let rec get_equal (input : int list list) : bool = 
  let f len l = 
    match List.length l with
    | x when x = len -> true
    | _ -> false
  in
  match input with
  | [] | [_] -> true
  | h :: t -> let len = List.length h in 
    List.for_all (f len) t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether all the given lists have equal length or not. *)
