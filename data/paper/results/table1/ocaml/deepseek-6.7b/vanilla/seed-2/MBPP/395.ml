let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | h::t -> if List.for_all (fun c -> c <> h) (String.to_list t) then Some h 
            else first_non_repeating_character t
           
let () = print_endline ((Option.value (first_non_repeating_character "testingstring") ~default:"No non-repeated characters") ^ "\n")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
