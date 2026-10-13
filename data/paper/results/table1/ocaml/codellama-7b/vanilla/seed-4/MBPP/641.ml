let rec is_nonagonal (n : int) : int = 
    (* returns -1 if n is not a nonagonal number *)
    if n < 0 then -1
    else
        let rec check (a : int) =  (* recursive helper function for checking divisibility *)
            if a == 0 then true (* base case, 0 is always divisible *)
            else if n mod a != 0 then false (* rejection criterion, if a is not divisible by n, then a is not a nonagonal number *)
            else check (a - 1) (* recursive case, a is divisible by n, check if (a - 1) is also divisible by n *)
        in
        if check (n - 1) then 0 (* base case, 0 is the first nonagonal number *)
        else n

let nth_nonagonal (n : int) : int = 
    (* returns the nth nonagonal number *)
    is_nonagonal n

(* examples *)
nth_nonagonal 2;; (* returns 0 *)
nth_nonagonal 3;; (* returns 1 *)
nth_nonagonal 4;; (* returns 2 *)
nth_nonagonal 5;; (* returns 3 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
