
let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let char = String.sub str1 0 1
	 in if (String.length str1) = (String.length (String.sub str1 1 (String.length str1 - 1))) then
	      first_non_repeating_character (String.sub str1 1 (String.length str1 - 1))
	  else Some char

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
