let rec len_log (list1 : string list) : int =
    match list1 with
        | [] -> 0
        | h::t -> if String.length h > len_log t then (String.length h) else (len_log t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest word. *)
