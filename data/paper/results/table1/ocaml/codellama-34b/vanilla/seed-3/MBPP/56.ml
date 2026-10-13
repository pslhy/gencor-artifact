let rec checks (n : int) : bool =
    if n < 10 then
        true
    else
        n = 2 * int_of_string (String.concat "" (List.rev (String.split_on_char '0' (string_of_int n)))) - 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
