(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string =
    if (string.[string.length - 1]) == 'o' then string.[string.length - 1] = 'O'
    is_upper (string.[0..(string.length - 2)])

