let rec lps (str : string) : int =
    let len = String.length str in
    let memo = Array.make_matrix len len (-1) in
    let rec lpsAux (str : string) (start : int) (end_ : int) : int =
        if start > end_ then 0
        else if start = end_ then 1
        else
            match memo.(start).(end_) with
            | -1 -> 
                let ans = 
                    if str.[start] = str.[end_] then 
                        2 + (lpsAux str (start + 1) (end_ - 1))
                    else 
                        max (lpsAux str start (end_ - 1)) (lpsAux str (start + 1) end_)
                in
                memo.(start).(end_) <- ans;
                ans
            | x -> x
    in lpsAux str 0 (len - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
