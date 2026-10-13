let rec max_length_list (input_list : int list list) :  int * int list = 
  let rec helper input_list max_length max_list sofar = 
    match input_list with
    | [] -> (max_length, max_list)
    | hd::tl -> 
      let length = List.length hd in
      if length > max_length then
        helper tl length hd sofar
      else
        helper tl max_length max_list sofar
  in
  helper input_list 0 [] input_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
