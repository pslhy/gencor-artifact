
let rec is_polite (n : int) : int = 
    let ( << ) a b = a * 10 + b in
    let nums = Array.of_list @@ String.split_on_char ' ' in
    let ( |> ) a b = b a in
    let rec loop (xs : list int) : int = 
        match xs with 
        | [] -> 0
        | x :: x' :: xs' -> x |> is_polite |> loop 
    in
    nums |> loop n

let nth_polite_number (n : int) : int = 
    if n <= 0 then 
        0
    else 
        is_polite n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
