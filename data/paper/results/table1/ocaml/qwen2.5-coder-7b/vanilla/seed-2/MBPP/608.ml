let rec bell_Number (n : int) : int = 
    let rec A [; x; y] = 
        x + y
    and A (x :: xs) = 
        x + A xs
    and A [] = 
        0
    and B (m, n) =
        if n = 0 then 1
        else A (List.map (fun k -> B (m - 1, k) * B (k, n - 1)) (List.init m (fun x -> x)))
    B (n, n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
