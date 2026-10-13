let rec max_length_list (input_list : int list list) :  int * int list =
  let rec aux xList current_max current_max_index =
    match xList with
    | [] -> current_max_index, current_max
    | h::t ->
        let new_max = if List.length h > current_max then List.length h else current_max in
        let new_index = if List.length h > current_max then input_list |> List.find_index ((=)h) else current_max_index in
        aux t new_max new_index
  in
  match input_list with
  | [] -> raise (Invalid_argument "Input list cannot be empty")
  | h::t -> aux t (List.length h) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
