let rec max_length_list (input_list : int list list) :  int * int list = 
  let rec find_max_length current_max lists = 
    match lists with 
    | [] -> current_max
    | x::xs -> let length = List.length x in
               if length > current_max then find_max_length length xs
               else find_max_length current_max xs
  in let max_length = find_max_length 0 input_list in
     let rec select_max_length_list accumulator lists =
       match lists with
       | [] -> accumulator
       | x::xs -> let length = List.length x in
                  if length = max_length then select_max_length_list (x::accumulator) xs
                  else select_max_length_list accumulator xs
     in select_max_length_list [] input_list
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
