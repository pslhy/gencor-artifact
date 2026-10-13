let rec checks (n : int) : bool =
    let reverse (n : int) : int = 
        (match n with
        | 0 -> 0
        | x when x < 0 -> reverse (-n)
        | _ -> n mod 10 + reverse (n/10)
    in
    let rev = reverse n in
    n = 2*rev + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
