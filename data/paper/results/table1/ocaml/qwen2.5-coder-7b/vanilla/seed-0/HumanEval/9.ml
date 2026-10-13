let rec rolling_max (numbers : int list) : int list = 
  let rec helper max_so_far rest acc = 
    match rest with
    | [] -> List.rev acc
    | x :: xs -> 
        let new_max = max max_so_far x in
        helper new_max xs (new_max :: acc) 
  in
  helper min_int numbers []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
