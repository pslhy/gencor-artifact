let rec max_length_list (input_list : int list list) :  int * int list =
    let rec aux input_list len curr_max =
        match input_list with
        | [] -> curr_max
        | [x] :: rest -> if List.length x > len then aux rest (List.length x) else aux rest len
        | x :: rest -> if List.length x > len then aux rest (List.length x) else aux rest len
    in
    aux input_list 0 [];;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
