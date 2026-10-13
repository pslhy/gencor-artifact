let rec count_charac (str1 : string) : int =
  if str1 = "" then
    0
  else
    let n = count_charac (String.sub str1 1 (String.length str1 - 1)) in
    n + String.length str1 in
Printf.printf "%d\n" (count_charac "Hello World");
count_charac "Hello World";;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the total number of characters in a string. *)
