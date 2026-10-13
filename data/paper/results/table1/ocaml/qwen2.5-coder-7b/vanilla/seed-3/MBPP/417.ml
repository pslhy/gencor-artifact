let rec group_tuples (input : string list list) : string list list = 
  List.fold_left (fun acc input -> match acc with
      | [] -> [input]
      | x::xs -> if List.length input = List.length x then (input::x::xs) else (x::input::xs)) [] input

let common_first_element (lst : string list list) : string list =
  let grouped = group_tuples lst in
  let rec find_common_first acc = function
    | [] -> acc
    | x::xs -> if List.for_all (fun other -> List.hd other = List.hd x) xs then find_common_first (List.hd x::acc) xs else acc
  in find_common_first [] grouped


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
