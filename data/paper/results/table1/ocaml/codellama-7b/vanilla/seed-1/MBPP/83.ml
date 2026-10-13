let rec get_Char (strr : string) : string =
match strr with
| [] -> []
| str::rest -> let values = [0..25]
in
let sum = ref 0 in
for i in values do
sum := (str.[i] + !sum) mod 26
done;
String.make (values.length) ('a' + !sum)::get_Char rest
done;
[] ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
