let rec is_polite (n : int) : int =
    match n with
    | 1 -> false
    | 2 -> true
    | 3 -> true
    | _ -> is_polite(n / 2) && is_polite(n - 2)

let polite (n : int) : int =
    let rec loop (i : int) : int =
        match i < n with
        | true -> loop (i + 1)
        | _ -> i
    loop 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
