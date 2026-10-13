let rec find_min_diff (arr : int list) (n : int) : int =
    match n with
    | 2 ->
        let x = List.hd arr in
        let y = List.hd (List.tl arr) in
        if x < y then
            y - x
        else
            x - y
    | n ->
        let h = List.hd arr in
        if h < 0 then
            find_min_diff (List.tl arr) (n - 1)
        else
            let t = List.tl arr in
            let rec min_of_two_nums (x : int) (y : int) : int =
                match x, y with
                | _, 0 -> x
                | 0, _ -> y
                | x, y -> if x < y then min_of_two_nums x (y - 1) else min_of_two_nums (x - 1) y
            in
            min_of_two_nums h (find_min_diff t (n - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
