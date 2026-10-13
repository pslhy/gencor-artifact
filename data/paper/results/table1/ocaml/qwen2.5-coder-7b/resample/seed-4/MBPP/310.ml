(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a given string to a list of characters. *)
let rec string_to_tuple (str1 : string) : string list = 
  match str1 with
  | "" -> []
  | _  -> let rec reverse_list acc l = 
             match l with 
             | [] -> acc
             | x::xs -> reverse_list (x::acc) xs
         in reverse_list [] (List.rev (String.to_list str1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:40: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_tuple (str1 : string) : string list = 
  match str1 with
  | "" -> []
  | _  -> let rec reverse_list acc l = 
             match l with 
             | [] -> acc
             | x::xs -> reverse_list (x::acc) xs
         in reverse_list [] (List.rev (List.of_seq (String.to_seq str1)))

