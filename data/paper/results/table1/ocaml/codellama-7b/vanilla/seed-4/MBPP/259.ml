let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
    (* helper function that compares and swaps adjacent elements of two lists *)
    let rec helper (acc1 : int list) (acc2 : int list) (lst2 : int list) : int list =
        match lst2 with
        | [] -> acc1
        | x :: y :: rest -> 
            if x >= y then helper (x :: acc1) (y :: acc2) (y :: rest)
            else helper (y :: acc1) (x :: acc2) (y :: rest)
    in
    (* helper function that applies helper function to all adjacent pairs in two lists *)
    let rec fold_and_return (lst1 : int list) (lst2 : int list) : int list list =
        match lst1, lst2 with
        | [], [] -> [lst1; lst2]
        | x :: xs, y :: ys -> 
            if x >= y then 
                let acc1, acc2 = helper [x] [y] ys in
                    fold_and_return [x :: xs] acc2
            else 
                let acc1, acc2 = helper [y] [x] ys in
                    fold_and_return [y :: xs] acc2
        | _, _ -> [lst1; lst2]
    in
    (* main function that lists the maximized elements for each list *)
    let rec maximize_lists (lsts1 : int list list) (lsts2 : int list list) : int list list =
        match lsts1, lsts2 with
        | [], [] -> lsts1
        | x :: xs, y :: ys -> 
            let res = fold_and_return x y in
                maximize_lists xs ys @ res
        | _, _ -> lsts1
    in
    maximize_lists test_tup1 test_tup2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
