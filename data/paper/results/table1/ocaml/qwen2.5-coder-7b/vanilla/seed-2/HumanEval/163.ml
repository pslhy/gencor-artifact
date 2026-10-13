let rec generate_integers (a : int) (b : int) : int list = 
    let rec find_evens n acc = 
        if n > b then
            List.rev acc
        else if n mod 2 = 0 then
            find_evens (n + 1) (n :: acc)
        else
            find_evens (n + 1) acc
    in
    if a > b then
        find_evens b []
    else
        find_evens a []

(* Test cases *)
let _ = generate_integers 2 8 = [2; 4; 6; 8]
let _ = generate_integers 8 2 = [2; 4; 6; 8]
let _ = generate_integers 10 14 = []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given two positive integers a and b, return the even digits between a *)
(*     and b, in ascending order. *)
(*     For example: *)
(*     >>> generate_integers 2 8 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 8 2 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 10 14 *)
(*     [] *)
