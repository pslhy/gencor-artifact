let rec check_str (string : string) : bool =
    if (string.[0] == 'a' || string.[0] == 'e' || string.[0] == 'i' || string.[0] == 'o' || string.[0] == 'u') then true
    else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
