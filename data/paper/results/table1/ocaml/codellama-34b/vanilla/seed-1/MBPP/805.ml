let rec max_sum_list (lists : int list list) : int list =
    (* Define a function to compare the sums of two lists of integers. *)
    let compare_sums (l1 : int list) (l2 : int list) : bool =
        List.fold_left ( + ) 0 l1 > List.fold_left ( + ) 0 l2 in

    (* Return the list in the input list with the highest sum. *)
    match lists with
    | [] -> [] (* Base case: no lists to compare. *)
    | [l] -> l (* Base case: only one list in the input list. *)
    | l1 :: l2 :: rest ->
        if compare_sums l1 l2 then
            l1 :: max_sum_list (l2 :: rest) (* Recursive case: compare two lists and recurse on the rest of the input list. *)
        else
            l2 :: max_sum_list (l1 :: rest)
done;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
