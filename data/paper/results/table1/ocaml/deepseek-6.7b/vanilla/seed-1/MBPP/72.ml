let rec dif_Square (n : int) : bool =
    let rec square_loop (n : int) (i : int) : bool =
        if i * i > n then false
        else if i * i = n then true
        else square_loop n (i + 1)
    in
    let rec check_loop (n : int) (i : int) : bool =
        if i * i > n then false
        else if square_loop (n - i * i) 0 then true
        else check_loop n (i + 1)
    in
    check_loop n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
