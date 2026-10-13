
let rec is_undulating (n : int) : bool =
    let str = string_of_int n in
    let rec helper (str : string) : int -> bool =
        match str with
        | [] -> true
        | hd::tl -> if hd != '0' && (hd - 1) mod 2 = 0 then false
                   else helper tl in
    helper str

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
