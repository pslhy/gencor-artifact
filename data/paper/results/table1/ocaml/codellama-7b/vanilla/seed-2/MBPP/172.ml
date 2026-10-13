let rec count_occurance (s : string) : int =
    match s with
    | "" -> 0
    | "std" -> 1
    | x -> count_occurance (String.sub s 1 (String.length s - 1)) + count_occurance (String.sub s 2 (String.length s - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
