let rec largest_neg (list1 : int list) : int = 
    let rec find_largest_neg current_max list = 
        match list with
        | [] -> current_max
        | x :: xs ->
            if x < 0 then
                if x > current_max then
                    find_largest_neg x xs
                else
                    find_largest_neg current_max xs
            else
                find_largest_neg current_max xs
    in
    match list1 with
    | [] -> failwith "No negative numbers in the list"
    | _ -> find_largest_neg min_int list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
