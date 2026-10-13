(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
let rec max_length_list (input_list : int list list) :  int * int list =
    match input_list with 
    | [] -> (0, [])
    | h :: t ->
        let (current_max, current_list) = max_length_list t in
        if List.length h > current_max
          then (List.length h, h)
          else (current_max, current_list)

