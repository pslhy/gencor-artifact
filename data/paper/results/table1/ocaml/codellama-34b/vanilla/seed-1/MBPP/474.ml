let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
    let str2 = String.sub str1 0 1 in
    if str2 = ch then
        newch ^ replace_char (String.sub str1 1 ((String.length str1) - 1)) ch newch
    else
        str2 ^ replace_char (String.sub str1 1 ((String.length str1) - 1)) ch newch


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
