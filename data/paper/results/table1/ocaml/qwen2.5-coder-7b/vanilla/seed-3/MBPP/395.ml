let rec first_non_repeating_character (str1 : string) : string option = 
 let rec traversal (seen : (char * int) list) (remaining : string) : string option = 
   match remaining with 
   | "" -> None 
   | c::cs -> 
     let new_seen = (c, 1) :: List.filter (fun (ch, _) -> ch <> c) seen in 
     match List.find_opt (fun (ch, cnt) -> ch = c) new_seen with 
     | Some (_, 1) -> Some c 
     | _ -> traversal new_seen cs 
 in 
 traversal [] str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
