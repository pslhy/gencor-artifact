let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let rec helper a b m o =
        if m = 0 then
            if n = 0 then (float @@ min (List.hd a) (List.hd b))
            else 
                let min_val = min (List.hd a) (List.hd b) in
                let max_val = min (List.hd a) (List.hd b) in
                if o = 1 then float max_val
                else (float @@ (min_val + max_val) /. 2.0)
        else if m > n then
            helper (List.tl a) b (m - 1) o
        else 
            helper a (List.tl b) (n - 1) o
    in
    helper arr1 arr2 n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
