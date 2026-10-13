let rec lps (str : string) : int =
    if str = "" then 0 else
    let (left, right) = find_longest_palindrome str in
    left + lps (str - left - right)

and find_longest_palindrome (str : string) : (int * int) =
    let rec loop (left : int) (right : int) =
        if str.[left] = str.[right] then
            if left = right then (1, 1) else
            let (l, r) = loop (left + 1) (right - 1) in
            (l + 1, r + 1)
        else (0, 0)
    in
    loop 0 (str.length - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
