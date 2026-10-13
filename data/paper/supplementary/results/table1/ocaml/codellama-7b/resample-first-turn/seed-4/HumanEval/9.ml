let rec rolling_max (numbers : int list) : int list = 
    match numbers with 
    | head :: tail -> 
        (match tail with 
        | [] -> head :: []
        | _ ->
            let tail_max = List.fold_left max head tail in 
            head :: rolling_max tail_max
And 
rolling_max [1; 2; 3; 2; 3; 4; 2] 
|> List.iter (fun x -> printf"%d "))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
