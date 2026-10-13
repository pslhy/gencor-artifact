let rec is_polite (n : int) : int =
    if n = 1 then n else
    let (m, r) = n / 10, n mod 10 in
    if r = 0 then is_polite (m - 1) else
    if r = 5 then is_polite (m - 1) + 1 else
    m

let nth_polite (n : int) : int =
    let rec loop (n : int) (i : int) =
        if i <= n then loop (n - 1) (is_polite i) else
        n
    in
    loop n 100


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
