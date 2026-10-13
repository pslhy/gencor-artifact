let rec number_ctr (str : string) : int = 
    let count_digits = function 
        | '0' .. '9' -> 1
        | _ -> 0
    in
    let rec helper (s : string) (ctr : int) : int = 
        match s with
        | "" -> ctr
        | _ -> helper (String.sub s 1 ((String.length s) - 1)) (ctr + (count_digits (String.sub s 0 1)))
    in 
    helper str 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
