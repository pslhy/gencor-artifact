(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
let rec reverse_vowels (str1 : string) : string =
    match str1 with
    | "" -> ""
    | h :: t -> reverse_vowels(t) @ if is_vowel(h) then h :: "" else ""

