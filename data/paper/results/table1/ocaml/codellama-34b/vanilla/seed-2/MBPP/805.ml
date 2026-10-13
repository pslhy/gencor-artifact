let rec max_sum_list (lists : int list list) : int list =
    match lists with
    | [] -> []
    | _ ->
        let max_sum = List.fold_left (fun acc (x : int) -> acc + x) 0 lists in
        let max_sum_list' = max_sum_list lists in
        if max_sum > max_sum_list' then
            lists
        else
            max_sum_list'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
