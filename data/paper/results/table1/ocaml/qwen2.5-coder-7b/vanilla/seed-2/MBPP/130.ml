let rec max_occurrences (nums : int list) : int = 
    let count acc x = 
        if x = num then acc + 1 else acc in 
    let (num, count) = 
        List.fold_left 
            (fun (current_num, current_count) x -> 
                let new_count = count current_count x in 
                if new_count > current_count then (x, new_count) else (current_num, current_count))
            (nums.[0], 0)
            nums in 
    num 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
