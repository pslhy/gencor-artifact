let rec checks (n : int) : bool =
    let rec reverse (n : int) (r : int) : int =
        if n = 0 then r else reverse (n / 10) (r * 10 + n mod 10) in
    n = reverse (n / 2) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
