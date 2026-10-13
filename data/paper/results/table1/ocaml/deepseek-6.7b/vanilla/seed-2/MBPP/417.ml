let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | []::t -> group_tuples t
  | (x::xs)::t -> 
    List.map (fun (y::ys) -> x::y::ys) (group_tuples (xs::List.map (fun (y::ys) -> ys) t))
    @ group_tuples t
  
let common_first_elements (input : string list list) : string list =
  List.map List.hd (group_tuples input)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
