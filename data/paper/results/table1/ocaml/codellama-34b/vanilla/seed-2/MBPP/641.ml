let rec is_nonagonal (n : int) : int =
    match n with
    | 0 -> 1
    | n when n > 0 -> n * is_nonagonal (n - 1)
    | _ -> invalid_arg "is_nonagonal"

let nth_nonagonal (n : int) : int =
    let rec aux n acc =
        if acc = 0 then
            n
        else
            aux (n + 1) (acc - 1)
    in
    aux 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
