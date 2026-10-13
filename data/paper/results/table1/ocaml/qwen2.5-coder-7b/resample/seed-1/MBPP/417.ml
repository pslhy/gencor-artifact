(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
let rec group_tuples (input : string list list) : string list list = 
  List.group_by (fun (prefix, str) -> prefix) input

let common_first_element (tuples : string list list) : string option =
  let grouped = group_tuples tuples in
  List.find_opt (fun (_, lst) -> List.length lst > 1) grouped
  |> Option.map (fun (_, lst) -> List.hd lst)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:3: Unbound value "List.group_by" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec group_tuples (input : string list list) : string list list = 
  let rec helper prefix acc = function
    | [] -> acc
    | (p, s) :: tail ->
      if p = prefix then helper prefix ((p, s) :: acc) tail
      else helper p [ (p, s) ] tail
  in
  List.fold_left (fun acc (prefix, s) -> helper prefix acc (prefix, s :: [])) [] input

let common_first_element (tuples : string list list) : string option =
  let grouped = group_tuples tuples in
  List.find_opt (fun (_, lst) -> List.length lst > 1) grouped
  |> Option.map (fun (_, lst) -> List.hd lst)

