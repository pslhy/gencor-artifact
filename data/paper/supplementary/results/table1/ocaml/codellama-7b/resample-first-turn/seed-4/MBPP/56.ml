let rec checks (n : int) : bool = 
    let rev = n |> string_of_int |> String.rev |> int_of_string in
    let check = n + 1 = rev * 2 in 
    check


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
