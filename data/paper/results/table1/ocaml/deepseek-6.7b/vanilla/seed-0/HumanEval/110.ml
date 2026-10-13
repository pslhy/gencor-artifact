let rec exchange (lst1 : int list) (lst2 : int list) : string =
    match lst1 with
    | [] -> "YES"
    | h1::t1 ->
        if h1 mod 2 = 0 then exchange t1 lst2
        else
            match lst2 with
            | [] -> "NO"
            | h2::t2 -> if h2 mod 2 = 0 then exchange (h2::t1) t2
                       else exchange t1 lst2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this problem, you will implement a function that takes two lists of numbers, *)
(*     and determines whether it is possible to perform an exchange of elements *)
(*     between them to make lst1 a list of only even numbers. *)
(*     There is no limit on the number of exchanged elements between lst1 and lst2. *)
(*     If it is possible to exchange elements between the lst1 and lst2 to make *)
(*     all the elements of lst1 to be even, return "YES". *)
(*     Otherwise, return "NO". *)
(*     For example: *)
(*     >>> exchange [1; 2; 3; 4] [1; 2; 3; 4] *)
(*     "YES" *)
(*     >>> exchange [1; 2; 3; 4] [1; 5; 3; 4] *)
(*     "NO" *)
(*     It is assumed that the input lists will be non-empty. *)
