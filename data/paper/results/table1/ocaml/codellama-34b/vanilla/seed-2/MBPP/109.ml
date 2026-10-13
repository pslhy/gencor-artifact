let rec odd_Equivalent (s : string) (n : int) : int =
    match n with
    | 0 -> 0
    | n when n > 0 ->
        if s = "" then 0
        else if s.[0] = '0' then odd_Equivalent (String.sub s 1 ((String.length s) - 1)) (n - 1)
        else odd_Equivalent (String.sub s 1 ((String.length s) - 1)) (n - 1) + 1
    | _ -> raise (Invalid_argument "n must be non-negative")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
