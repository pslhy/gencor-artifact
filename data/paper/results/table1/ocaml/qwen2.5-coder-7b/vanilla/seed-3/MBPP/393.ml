let rec max_length_list (input_list : int list list) :  int * int list = 
  let rec helper remaining_list current_max current_list = 
    match remaining_list with 
    | [] -> (current_max, current_list)
    | lst :: rest -> 
        let (len, _) = List.length lst in
        if len > current_max then 
          helper rest len lst
        else 
          helper rest current_max current_list
  in 
  helper input_list 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
