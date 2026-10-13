let rec max_sum_list (lists : int list list) : int list =
    match lists with
    | [] -> []
    | _ ->
        let rec find_max (l : int list) (n : int) : int =
            match l with
            | [] -> n
            | h :: t -> if h > n then find_max t h else find_max t n
        in
        let max_sum = find_max (List.map (fun l -> List.sum l) lists) 0
        in
        List.filter (fun l -> List.sum l = max_sum) lists


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
