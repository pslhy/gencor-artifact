let rec is_perfect_square (n : int) : bool =
    if n < 0 then false
    else if n = 0 || n = 1 then true
    else
        let rec binary_search (start : int) (end_ : int) : bool =
            if start > end_ then false
            else
                let mid = (start + end_) / 2 in
                let square = mid * mid in
                    if square = n then true
                    else if square > n then binary_search start (mid - 1)
                    else binary_search (mid + 1) end_
        in
        binary_search 0 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
