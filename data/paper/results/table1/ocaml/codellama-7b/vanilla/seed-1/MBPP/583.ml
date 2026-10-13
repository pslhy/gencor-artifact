let rec catalan_number (num : int) : int =
    let rec aux (i : int) (acc : int) : int =
        if i = num then
            acc + 1
        else
            let next = catalan_number (i + 1) in
            aux (i + 1) (acc + next)
    in
    aux 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
