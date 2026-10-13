let rec max_length_list (input_list : int list list) :  int * int list =
    match input_list with
    | [] -> (0, [])
    | current_list :: rest ->
    let (max_len, _) = max_length_list rest
    in
    if List.length current_list > max_len then
        (List.length current_list, current_list)
    else
        (max_len, List.hd rest)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
