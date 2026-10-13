let rec max_sum_list (lists : int list list) : int list =
    let rec sum_list (l : int list) : int =
        match l with
            | [] -> 0
            | h::t -> h + sum_list t

    and max_sum (l1 : int list) (l2 : int list) : int list =
        if sum_list l1 > sum_list l2 then l1 else l2
    in
    List.fold_left max_sum [] lists


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
