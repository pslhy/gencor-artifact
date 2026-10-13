
let rec group_tuples (input : string list list) : string list list = 
  List.map (List.tl) input

let rec find_first_common (lst : string list option list) : string list option =
  match lst with
  | [] | [_] -> None
  | first :: rest ->
    let grouped = group_tuples rest in
    let matches = List.filter (fun lst -> List.length lst > 0 && List.hd lst = List.hd first) grouped in
    if List.length matches > 0 then 
      Some (List.map List.hd matches)
    else
      find_first_common (List.map Option.some (List.tl first) :: rest)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
