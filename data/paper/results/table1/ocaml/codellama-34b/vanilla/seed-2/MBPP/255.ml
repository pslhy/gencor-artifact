let rec combinations_colors (l : string list) (n : int) : string list list =
    match l with
    | [] -> []
    | _ ->
        let elem = List.hd l
        let rec loop (acc : string list list) (to_add : string list) (current : string list) (n' : int) : string list list =
            if n' = 0 then
                if current != [] then acc @ [current] else acc
            else
                let combinations = combinations_colors to_add (n' - 1)
                combinations |> List.fold_left (fun acc' (_, n) -> loop (acc' @ [current @ n]) to_add (current @ n) n') []
        loop [] to_add elem n in
    
    combinations_colors l n



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and length n, and generates all combinations (with repetition) of the elements of the list and returns a list with a list for each combination. *)
