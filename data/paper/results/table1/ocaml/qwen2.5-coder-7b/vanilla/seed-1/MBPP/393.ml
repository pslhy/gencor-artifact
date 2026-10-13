let rec max_length_list (input_list : int list list) :  int * int list = 
  let rec find_length acc = function
    | [] -> acc
    | h::t -> find_length (if List.length h > acc then List.length h else acc) t
  in
  let max_length = find_length 0 input_list
  in
  let rec find_list_with_max_length = function
    | [] -> (0, [])
    | h::t -> if List.length h = max_length then (max_length, h) else find_list_with_max_length t
  in
  find_list_with_max_length input_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
