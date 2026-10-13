(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let char = String.sub str1 0 1
	 in if (String.length str1) = (String.length (String.remove_all str1 char))
	then first_non_repeating_character (String.remove_prefix str1 1)
	else Some char

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Unbound value "String.remove_all" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let char = String.sub str1 0 1 in
         if (String.length str1) = (String.length (String.replace ~str:str1 ~sub:char ~by:"")
          then first_non_repeating_character (String.sub str1 1 (String.length str1))
          else Some char

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:11: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let char = String.sub str1 0 1 in
	 if (String.length str1) = (String.length (String.replace ~str:str1 ~sub:char ~by:"")) 
	 then first_non_repeating_character (String.sub str1 1 (String.length str1 - 1)) 
	 else Some char

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:45: Unbound value "String.replace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let char = String.sub str1 0 1 in
         if str1 |> String.count (=) char = str1 |> String.length
         then first_non_repeating_character (String.sub str1 1 (String.length str1))
         else Some char

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let char = String.sub str1 0 1 in
         if 1 = (String.iteri (fun i c -> if c = char then 1 else 0) str1)
         then first_non_repeating_character (String.sub str1 1 (String.length str1))
         else Some char

