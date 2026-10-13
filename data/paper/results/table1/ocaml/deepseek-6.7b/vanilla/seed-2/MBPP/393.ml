let rec max_length_list (input_list : int list list) :  int * int list =
  let rec helper input cur_max_len cur_max_list =
    match input with
    | [] -> (cur_max_len, cur_max_list)
    | x::xs ->
        if List.length x > cur_max_len then
          helper xs (List.length x) x
        else
          helper xs cur_max_len cur_max_list
  in
  helper input_list 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
