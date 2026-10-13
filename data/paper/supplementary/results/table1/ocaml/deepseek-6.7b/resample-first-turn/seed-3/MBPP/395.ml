let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let first_char = String.get str1 0 in
         if String.length(String.sub str1 1 (String.length str1 - 1)) = String.length(String.concat "" (List.filter (fun x -> x <> first_char) (List.map (fun x -> String.make 1 x) (String.explode str1)))) then 
           Some first_char 
         else first_non_repeating_character (String.sub str1 1 (String.length str1 - 1))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
