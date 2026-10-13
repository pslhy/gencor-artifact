let rec is_sublist (l : int list) (s : int list) : bool =
  match l with
  | [] -> if s = [] then true else false
  | h::t -> 
    if List.length s > List.length l then false
    else
      if List.hd s = h && List.compare (List.rev t) (List.rev (List.tl s)) <= 0 then true
      else is_sublist t s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
