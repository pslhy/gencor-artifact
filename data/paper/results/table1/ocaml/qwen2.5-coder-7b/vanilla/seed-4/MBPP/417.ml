let rec group_tuples (input : string list list) : string list list = 
  List.fold_left (fun acc x -> (x :: acc)) [[]] input

let rec filter_empty_lists (input : string list list) : string list list =
  List.filter (fun x -> x <> []) input

let filter_non_unique (input : string list list) : string list list =
  List.filter (fun x -> List.length x > 1) input

let from_list (input : string list) : string Set.t =
  input |> Set.of_list

let intersect (input : string Set.t) : string option =
  match input |> Set.elements |> List.of_seq with
  | [] -> None
  | x :: xs -> Some x

let solve (input : string list list) : string option =  
  input 
  |> group_tuples 
  |> filter_empty_lists 
  |> filter_non_unique 
  |> from_list 
  |> intersect 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
