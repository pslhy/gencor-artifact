let rec checks (n : int) : bool =
    let rev = List.rev (string_of_int n) in
    rev = rev
    &&
    let rev_num : int = int_of_string rev in
    rev_num = n - 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
