let rec is_polite (n : int) : int = 
    let ( << ) a b = a * 10 + b in
    let nums = Array.of_list @@ String.explode @@ string_of_int n in
    let rec all_lt_n (xs : int list) : bool =
        match xs with
        | [] -> true
        | x :: _ when x >= n -> false
        | _ :: xs -> all_lt_n xs
    in
    all_lt_n @@ List.map (fun x -> n << x + 1) nums

let nth_polite (n : int) : int =
    let rec aux (i : int) : int =
        if i = n then i
        else if is_polite i then aux (i + 1)
        else aux (i + 1)
    in
    aux 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
