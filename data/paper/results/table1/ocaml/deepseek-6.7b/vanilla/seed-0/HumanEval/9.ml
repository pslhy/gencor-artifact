let rec rolling_max (numbers : int list) : int list =
    match numbers with
    | [] -> []
    | h :: t -> h :: rolling_max' h t
and rolling_max' (current_max : int) (numbers : int list) : int list =
    match numbers with
    | [] -> []
    | h :: t ->
        let new_max = max current_max h in
        new_max :: rolling_max' new_max t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
