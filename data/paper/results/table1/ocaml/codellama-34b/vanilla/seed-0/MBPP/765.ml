let rec is_polite (n : int) : int =
    if n <= 1 then 1
    else if n mod 2 = 0 then is_polite(n/2) + 1
    else if n mod 3 = 0 then is_polite(n/3) + 1
    else if n mod 5 = 0 then is_polite(n/5) + 1
    else if n mod 7 = 0 then is_polite(n/7) + 1
    else 1

let nth_polite (n : int) : int =
    let rec loop (i : int) (count : int) : int =
        if count = n then i
        else loop (i + 1) (count + is_polite(i))
    loop 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
