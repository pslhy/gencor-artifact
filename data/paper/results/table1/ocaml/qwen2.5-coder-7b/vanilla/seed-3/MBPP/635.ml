let rec heap_sort (iterable : int list) : int list = 
    let rec build_max_heap (lst : int list) : int list =
        List.fold_left
            (fun acc x -> parent x :: acc)
            []
            lst
        |> List.sort compare
        |> List.rev
    and parent (e: int) : int =
        e * (-2)
    in
    build_max_heap iterable


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
