let rec heap_sort (iterable : int list) : int list =
    let rec aux (list : int list) (size : int) : int * int list =
        match list with
        | [] | _ :: [] -> (0, list)
        | x :: y :: rest ->
            let (smallest, smaller_list) = aux (y :: rest) (size - 1) in
            (smallest, x :: smaller_list)
    in
    let (smallest, sorted_list) = aux iterable (List.length iterable) in
    sorted_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
