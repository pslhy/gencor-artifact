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
  | _ -> let first_char = String.get str1 0 in
         if String.length(String.sub str1 1 (String.length str1 - 1)) = String.length(String.concat "" (List.filter (fun x -> x <> first_char) (List.map (fun x -> String.make 1 x) (String.explode str1)))) then 
           Some first_char 
         else first_non_repeating_character (String.sub str1 1 (String.length str1 - 1))
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:182: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let first_char = String.get str1 0 in
         if String.length(String.sub str1 1 (String.length str1 - 1)) = String.length(String.concat "" (List.filter (fun x -> x <> first_char) (List.map (fun x -> String.make 1 x) (List.init (String.length str1) (String.get str1))))) then 
           Some first_char
         else first_non_repeating_character (String.sub str1 1 (String.length str1 - 1))
;;

