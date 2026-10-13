let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
  if dict1 = [] then
    []
  else
    let key, _ = List.hd dict1 in
    let filtered = List.filter (fun (_, v) -> v = _v) dict1 in
    List.sort (fun (_, v1) (_, v2) -> compare v1 v2) filtered

let sort_dict (dict : (string * 'a) list) :  (string * 'a) list =
  List.map (fun ((k, _) as pair) -> (k, sort_counter [pair])) dict


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
