let rec generate_integers (a : int) (b : int) : int list = 
    let is_even (x : int) = x mod 2 = 0 in
    let rec helper x acc = 
        if x > b then acc
        else if is_even x then helper (x + 1) (x :: acc)
        else helper (x + 1) acc
    in List.rev (helper a [])


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
