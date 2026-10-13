let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
  if str1 = "" then "" else
  if String.get str1 0 = ch then newch ^ replace_char (String.sub str1 1 (String.length str1 - 1)) ch newch else
  String.get str1 0 ^ replace_char (String.sub str1 1 (String.length str1 - 1)) ch newch

let replace_all (str1 : string) (ch : string) (newch : string) : string =
  let rec loop (str : string) (acc : string) : string =
    if String.length str = 0 then acc else
    loop (String.sub str 1 (String.length str - 1)) (replace_char str ch newch ^ acc)
  in
  loop str1 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
